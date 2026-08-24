import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/data/model/get_teacher_dashboard_response_model.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/data/model/get_teacher_student_response_model.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/domain/repo/teachDashboard_repo.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/flutx_core/debug_print.dart';
import '../../data/model/get_teacher_subject_response_model.dart';
import '../../data/model/get_student_details_response_model.dart';

class TeacherDashboardController extends BaseController {
  final _teacherRepository = Get.find<TeachDashboardRepository>();

  final Rxn<TeacherDashboardResponse> userInfo =
      Rxn<TeacherDashboardResponse>();

  final Rxn<GetTeacherStudentResponseModel> studentInfo =
      Rxn<GetTeacherStudentResponseModel>();
  final RxBool isStudentListLoading = false.obs;

  final Rxn<SubjectListResponseModel> subInfo = Rxn<SubjectListResponseModel>();

  final Rxn<GetStudentDetailsResponseModel> studentOverviewTop =
      Rxn<GetStudentDetailsResponseModel>();
  final Rxn<GetStudentDetailsResponseModel> studentOverviewBottom =
      Rxn<GetStudentDetailsResponseModel>();
  final Rxn<Counters> initialCounters = Rxn<Counters>();

  final TextEditingController searchController = TextEditingController();

  // Filtering variables
  final RxString searchQuery = ''.obs;
  final RxString filterStudentName = ''.obs;
  final RxString filterSchoolName = ''.obs;
  final RxString filterGrade = 'All'.obs;
  final RxString filterSubject = 'All'.obs;
  final RxnDouble filterMinQuizScore = RxnDouble();
  final RxnDouble filterMaxQuizScore = RxnDouble();

  // Sorting variables
  final RxString sortBy = 'none'.obs; // 'none', 'studentName', 'userId', etc.
  final RxString sortOrder = 'ASC'.obs; // 'ASC' or 'DESC'

  List<StudentItem> _allStudents = [];
  final RxInt currentPage = 1.obs;
  static const int pageSize = 10;
  static const int _studentFetchPageSize = 100;

  List<StudentItem> get filteredStudents {
    return studentInfo.value?.items ?? [];
  }

  List<StudentItem> get allFilteredStudents {
    if (searchQuery.isEmpty &&
        filterStudentName.isEmpty &&
        filterSchoolName.isEmpty &&
        filterGrade.value == 'All' &&
        filterSubject.value == 'All' &&
        filterMinQuizScore.value == null &&
        filterMaxQuizScore.value == null &&
        sortBy.value == 'none') {
      return _allStudents;
    }

    final filtered = _allStudents.where((student) {
      final matchesSearch = searchQuery.isEmpty ||
          student.studentName.toLowerCase().contains(
                searchQuery.value.toLowerCase(),
              ) ||
          student.schoolName.toLowerCase().contains(
                searchQuery.value.toLowerCase(),
              ) ||
          student.userId
              .toLowerCase()
              .contains(searchQuery.value.toLowerCase()) ||
          student.id.toLowerCase().contains(searchQuery.value.toLowerCase()) ||
          student.gradeLevel.toLowerCase().contains(
                searchQuery.value.toLowerCase(),
              );

      final matchesFilterName = filterStudentName.isEmpty ||
          student.studentName.toLowerCase().contains(
                filterStudentName.value.toLowerCase(),
              );

      final matchesFilterSchool = filterSchoolName.isEmpty ||
          student.schoolName.toLowerCase().contains(
                filterSchoolName.value.toLowerCase(),
              );

      final cleanFilterGrade =
          filterGrade.value.replaceAll(' ', '').toLowerCase();
      final cleanStudentGrade =
          student.gradeLevel.replaceAll(' ', '').toLowerCase();
      final matchesFilterGrade =
          filterGrade.value == 'All' || cleanStudentGrade == cleanFilterGrade;

      final matchesMinScore = filterMinQuizScore.value == null ||
          student.avgQuizScore >= filterMinQuizScore.value!;
      final matchesMaxScore = filterMaxQuizScore.value == null ||
          student.avgQuizScore <= filterMaxQuizScore.value!;

      return matchesSearch &&
          matchesFilterName &&
          matchesFilterSchool &&
          matchesFilterGrade &&
          matchesMinScore &&
          matchesMaxScore;
    }).toList();

    // Apply sorting
    if (sortBy.value != 'none') {
      filtered.sort((a, b) {
        dynamic valA;
        dynamic valB;

        switch (sortBy.value) {
          case 'studentName':
            valA = a.studentName;
            valB = b.studentName;
            break;
          case 'userId':
            valA = a.userId;
            valB = b.userId;
            break;
          case 'gradeLevel':
            valA = a.gradeLevel;
            valB = b.gradeLevel;
            break;
          case 'status':
            valA = a.status;
            valB = b.status;
            break;
          case 'avgQuizScore':
            valA = a.avgQuizScore;
            valB = b.avgQuizScore;
            break;
          default:
            return 0;
        }

        if (valA == null && valB == null) return 0;
        if (valA == null) return 1;
        if (valB == null) return -1;

        int cmp;
        if (valA is String) {
          cmp = valA.compareTo(valB.toString());
        } else if (valA is num) {
          cmp = valA.compareTo(valB as num);
        } else {
          return 0;
        }

        return sortOrder.value == 'ASC' ? cmp : -cmp;
      });
    }

    return filtered;
  }

  void _updateStudentInfo() {
    final filtered = allFilteredStudents;
    final totalFiltered = filtered.length;
    final totalPages = (totalFiltered / pageSize).ceil();

    final maxPage = totalPages == 0 ? 1 : totalPages;
    if (currentPage.value > maxPage) {
      currentPage.value = maxPage;
    }

    final startIndex = (currentPage.value - 1) * pageSize;
    final endIndex = (startIndex + pageSize).clamp(0, totalFiltered);
    final itemsForPage = filtered.isEmpty
        ? <StudentItem>[]
        : filtered.sublist(startIndex, endIndex);

    studentInfo.value = GetTeacherStudentResponseModel(
      items: itemsForPage,
      meta: Meta(
        page: currentPage.value,
        limit: pageSize,
        total: totalFiltered,
        totalPages: maxPage,
      ),
    );
  }

  int get activeStudentCount {
    return _allStudents.where((s) => s.status.toLowerCase() == 'active').length;
  }

  int get inactiveStudentCount {
    return _allStudents
        .where((s) => s.status.toLowerCase() == 'inactive')
        .length;
  }

  void changePage(int page) {
    currentPage.value = page;
    _updateStudentInfo();
  }

  @override
  void onInit() {
    super.onInit();

    // Listen to filtering and pagination changes to update studentInfo
    ever(searchQuery, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(filterStudentName, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(filterSchoolName, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(filterGrade, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(filterSubject, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(filterMinQuizScore, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(filterMaxQuizScore, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(sortBy, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(sortOrder, (_) {
      currentPage.value = 1;
      _updateStudentInfo();
    });
    ever(currentPage, (_) {
      _updateStudentInfo();
    });
  }

  Future<void> fetchDashboard({
    String? gradeLevel,
    String? timePeriod,
    String? subject,
  }) async {
    final result = await _teacherRepository.fetchDashboard(
      gradeLevel: gradeLevel,
      timePeriod: timePeriod,
      subject: subject,
    );

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('data fetch failed');
      },
      (success) {
        userInfo.value = success.data;
        if (initialCounters.value == null) {
          initialCounters.value = success.data.counters;
        }
        DPrint.log(success.message);
      },
    );
  }

  Future<void> fetchStudent({int? page, int? limit}) async {
    isStudentListLoading.value = true;
    try {
      final fetchedStudents = <StudentItem>[];
      var fetchPage = 1;
      var totalPages = 1;
      var hasError = false;
      final requestLimit = limit != null && limit > _studentFetchPageSize
          ? limit
          : _studentFetchPageSize;
      String? successMessage;

      while (fetchPage <= totalPages) {
        final result = await _teacherRepository.fetchStudent(
          page: fetchPage,
          limit: requestLimit,
          sortBy: sortBy.value == 'none' ? null : sortBy.value,
          order: sortBy.value == 'none' ? null : sortOrder.value.toLowerCase(),
        );

        result.fold(
          (fail) {
            hasError = true;
            setError(fail.message);
            DPrint.log('data fetch failed');
          },
          (success) {
            final data = success.data;
            final responseLimit =
                data.meta.limit > 0 ? data.meta.limit : _studentFetchPageSize;
            final pagesFromTotal = data.meta.total <= 0
                ? 1
                : (data.meta.total / responseLimit).ceil();

            fetchedStudents.addAll(data.items);
            totalPages = data.meta.totalPages > pagesFromTotal
                ? data.meta.totalPages
                : pagesFromTotal;
            successMessage = success.message;
          },
        );

        if (hasError) break;
        fetchPage++;
      }

      if (!hasError) {
        _allStudents = fetchedStudents;
        currentPage.value = page ?? 1;
        _updateStudentInfo();
        if (successMessage != null) {
          DPrint.log(successMessage!);
        }
      }
    } finally {
      isStudentListLoading.value = false;
    }
  }

  Future<void> fetchSubject() async {
    final result = await _teacherRepository.fetchSubject();

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('data fetch failed');
      },
      (success) {
        subInfo.value = success.data;
        DPrint.log(success.message);
      },
    );
  }

  Future<void> fetchStudentDetailsTop(
    String studentId, {
    String? timePeriod,
    String? subject,
  }) async {
    final result = await _teacherRepository.fetchStudentDetails(
      studentId,
      timePeriod: timePeriod,
      subject: subject,
    );

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('student details top fetch failed');
      },
      (success) {
        studentOverviewTop.value = success.data;
        DPrint.log(
            "student details top fetched successfully ${success.message}");
      },
    );
  }

  Future<void> fetchStudentDetailsBottom(
    String studentId, {
    String? gradeLevel,
    String? timePeriod,
    String? subject,
  }) async {
    final result = await _teacherRepository.fetchStudentDetails(
      studentId,
      gradeLevel: gradeLevel,
      timePeriod: timePeriod,
      subject: subject,
    );

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('student details bottom fetch failed');
      },
      (success) {
        studentOverviewBottom.value = success.data;
        DPrint.log(
            "student details bottom fetched successfully ${success.message}");
      },
    );
  }
}
