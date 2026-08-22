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
  NetworkResult<TeacherDashboardResponse> fetchDashboard({
    String? gradeLevel,
    String? timePeriod,
    String? subject,
  }) {
    return _apiClient.get(
      endpoint: ApiConstants.dashboard.fetchDashboard,
      queryParameters: {
        if (gradeLevel != null &&
            gradeLevel.isNotEmpty &&
            gradeLevel.toLowerCase() != 'all')
          'gradeLevel': gradeLevel,
        if (timePeriod != null &&
            timePeriod.isNotEmpty &&
            timePeriod.toLowerCase() != 'all')
          'timePeriod': timePeriod,
        if (subject != null &&
            subject.isNotEmpty &&
            subject.toLowerCase() != 'all')
          'subject': subject,
      },
      fromJsonT: (json) =>
          TeacherDashboardResponse.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  NetworkResult<GetTeacherStudentResponseModel> fetchStudent(
      {int? page, int? limit, String? sortBy, String? order}) {
    return _apiClient.get(
      endpoint: ApiConstants.dashboard.fetchStudent,
      queryParameters: {
        if (page != null) 'page': page,
        if (limit != null) 'limit': limit,
        if (sortBy != null) 'sortBy': sortBy,
        if (order != null) 'order': order,
      },
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
  NetworkResult<GetStudentDetailsResponseModel> fetchStudentDetails(
    String studentId, {
    String? timePeriod,
    String? subject,
    String? gradeLevel,
  }) {
    return _apiClient.get(
      endpoint: ApiConstants.dashboard.fetchTeacher(studentId),
      queryParameters: {
        if (timePeriod != null &&
            timePeriod.isNotEmpty &&
            timePeriod.toLowerCase() != 'all')
          'timePeriod': timePeriod,
        if (subject != null &&
            subject.isNotEmpty &&
            subject.toLowerCase() != 'all')
          'subject': subject,
        if (gradeLevel != null &&
            gradeLevel.isNotEmpty &&
            gradeLevel.toLowerCase() != 'all')
          'gradeLevel': gradeLevel,
      },
      fromJsonT: (json) => GetStudentDetailsResponseModel.fromJson(json),
    );
  }
}
