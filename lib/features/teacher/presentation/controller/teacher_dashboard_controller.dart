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

  final Rxn<StudentDetailsData> studentOverview = Rxn<StudentDetailsData>();

  final TextEditingController searchController = TextEditingController();

  // Filtering variables
  final RxString searchQuery = ''.obs;
  final RxString filterStudentName = ''.obs;
  final RxString filterSchoolName = ''.obs;
  final RxString filterGrade = 'All'.obs;
  final RxString filterSubject = 'All'.obs;

  List<StudentItem> get filteredStudents {
    final students = studentInfo.value?.items ?? [];
    if (searchQuery.isEmpty &&
        filterStudentName.isEmpty &&
        filterSchoolName.isEmpty &&
        filterGrade.value == 'All' &&
        filterSubject.value == 'All') {
      return students;
    }

    return students.where((student) {
      final matchesSearch = searchQuery.isEmpty ||
          student.studentName.toLowerCase().contains(
                searchQuery.value.toLowerCase(),
              ) ||
          student.schoolName.toLowerCase().contains(
                searchQuery.value.toLowerCase(),
              ) ||
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

      final matchesFilterGrade =
          filterGrade.value == 'All' || student.gradeLevel == filterGrade.value;

      // Note: Subject matching depends on how subjects are linked to students in the model.
      // For now, focusing on the fields available in StudentItem.
      return matchesSearch &&
          matchesFilterName &&
          matchesFilterSchool &&
          matchesFilterGrade;
    }).toList();
  }

  int get activeStudentCount {
    final items = studentInfo.value?.items ?? [];
    return items.where((s) => s.status.toLowerCase() == 'active').length;
  }

  int get inactiveStudentCount {
    final items = studentInfo.value?.items ?? [];
    return items.where((s) => s.status.toLowerCase() == 'inactive').length;
  }

  @override
  void onInit() {
    super.onInit();
    fetchDashboard();
  }

  Future<void> fetchDashboard() async {
    final result = await _teacherRepository.fetchDashboard();

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

  Future<void> fetchStudent() async {
    final result = await _teacherRepository.fetchStudent();

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('data fetch failed');
      },
      (success) {
        studentInfo.value = success.data;
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

  Future<void> fetchStudentDetails(String studentId) async {
    final result = await _teacherRepository.fetchStudentDetails(studentId);

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('student details fetch failed');
      },
      (success) {
        studentOverview.value = success.data;
        DPrint.log("student details fetched successfully ${success.message}");
      },
    );
  }
}
