import '../../../../core/api/network_result.dart';
import '../../data/model/get_student_details_response_model.dart';
import '../../data/model/get_teacher_dashboard_response_model.dart';
import '../../data/model/get_teacher_student_response_model.dart';
import '../../data/model/get_teacher_subject_response_model.dart';

abstract class TeachDashboardRepository {
  NetworkResult<TeacherDashboardResponse> fetchDashboard({
    String? gradeLevel,
    String? timePeriod,
    String? subject,
  });
  NetworkResult<GetTeacherStudentResponseModel> fetchStudent(
      {int? page, int? limit, String? sortBy, String? order});
  NetworkResult<SubjectListResponseModel> fetchSubject();
  NetworkResult<GetStudentDetailsResponseModel> fetchStudentDetails(
    String studentId, {
    String? timePeriod,
    String? subject,
    String? gradeLevel,
  });
}
