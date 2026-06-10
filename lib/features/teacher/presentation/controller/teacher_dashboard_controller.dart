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

  final Rxn<SubjectListResponseModel> subInfo = Rxn<SubjectListResponseModel>();

  final Rxn<GetStudentDetailsResponseModel> studentOverviewTop = Rxn<GetStudentDetailsResponseModel>();
  final Rxn<GetStudentDetailsResponseModel> studentOverviewBottom = Rxn<GetStudentDetailsResponseModel>();

  final TextEditingController searchController = TextEditingController();

  // Filtering variables
  final RxString searchQuery = ''.obs;
  final RxString filterStudentName = ''.obs;
  final RxString filterSchoolName = ''.obs;
  final RxString filterGrade = 'All'.obs;
  final RxString filterSubject = 'All'.obs;

  List<StudentItem> _allStudents = [];
  final RxInt currentPage = 1.obs;
  static const int pageSize = 10;

  List<StudentItem> get filteredStudents {
    return studentInfo.value?.items ?? [];
  }

  List<StudentItem> get allFilteredStudents {
    if (searchQuery.isEmpty &&
        filterStudentName.isEmpty &&
        filterSchoolName.isEmpty &&
        filterGrade.value == 'All' &&
        filterSubject.value == 'All') {
      return _allStudents;
    }

    return _allStudents.where((student) {
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

      return matchesSearch &&
          matchesFilterName &&
          matchesFilterSchool &&
          matchesFilterGrade;
    }).toList();
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
    ever(currentPage, (_) {
      _updateStudentInfo();
    });

    fetchDashboard(
      subject: 'English',
      gradeLevel: 'All',
      timePeriod: 'Past Year',
    );
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
        DPrint.log(success.message);
      },
    );
  }

  Future<void> fetchStudent({int? page, int? limit}) async {
    final result = await _teacherRepository.fetchStudent(
      page: 1,
      limit: 10000,
    );

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('data fetch failed');
      },
      (success) {
        _allStudents = success.data.items;
        currentPage.value = page ?? 1;
        _updateStudentInfo();
        DPrint.log(success.message);
      },
    );
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
        DPrint.log("student details top fetched successfully ${success.message}");
      },
    );
  }

  Future<void> fetchStudentDetailsBottom(
    String studentId, {
    String? gradeLevel,
    String? subject,
  }) async {
    final result = await _teacherRepository.fetchStudentDetails(
      studentId,
      gradeLevel: gradeLevel,
      subject: subject,
    );

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('student details bottom fetch failed');
      },
      (success) {
        studentOverviewBottom.value = success.data;
        DPrint.log("student details bottom fetched successfully ${success.message}");
      },
    );
  }
}
