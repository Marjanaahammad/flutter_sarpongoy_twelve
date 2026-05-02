import 'package:flutter_sarpongoy_twelve/features/teacher/data/model/get_teacher_dashboard_response_model.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/data/model/get_teacher_student_response_model.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/data/model/get_teacher_subject_response_model.dart';

import '../../../../core/api/api_client.dart';
import '../../../../core/api/network_result.dart';
import '../../../../core/constants/api_constants.dart';
import '../../domain/repo/teachDashboard_repo.dart';
import '../model/get_student_details_response_model.dart';

class TeachdashboardImpl implements TeachDashboardRepository {
  final ApiClient _apiClient;

  TeachdashboardImpl({required ApiClient apiClient}) : _apiClient = apiClient;

  @override
  NetworkResult<TeacherDashboardResponse> fetchDashboard() {
    return _apiClient.get(
      endpoint: ApiConstants.dashboard.fetchDashboard,
      fromJsonT: (json) =>
          TeacherDashboardResponse.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  NetworkResult<GetTeacherStudentResponseModel> fetchStudent() {
    return _apiClient.get(
      endpoint: ApiConstants.dashboard.fetchStudent,
      fromJsonT: (json) =>
          GetTeacherStudentResponseModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  NetworkResult<SubjectListResponseModel> fetchSubject() {
    return _apiClient.get(
      endpoint: ApiConstants.dashboard.fetchSubject,
      fromJsonT: (json) =>
          SubjectListResponseModel.fromJson(json as List<dynamic>),
    );
  }

  @override
  NetworkResult<StudentDetailsData> fetchStudentDetails(String studentId) {
    return _apiClient.get(
      endpoint: ApiConstants.dashboard.fetchTeacher(studentId),
      fromJsonT: (json) => StudentDetailsData.fromJson(json),
    );
  }
}
