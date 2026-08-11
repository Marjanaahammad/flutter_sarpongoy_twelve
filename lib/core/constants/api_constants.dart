class ApiConstants {
  /// [Base Configuration]
  //static const String baseDomain = 'http://10.10.26.122:5004'; // Noyon Office
  static const String baseDomain = 'http://localhost:5004'; // Noyon Office
  //static const String baseDomain = 'https://api.ilearnready.com'; // Noyon Office
  static const String baseUrl = '$baseDomain/api/v1';

  // /// [Headers]
  // static Map<String, String> get defaultHeaders => {
  //   'Content-Type': 'application/json',
  //   'Accept': 'application/json',
  // };
  //
  // static Map<String, String> authHeaders(String token) => {
  //   ...defaultHeaders,
  //   'Authorization': 'Bearer $token',
  // };

  static Map<String, String> get multipartHeaders => {
        'Accept': 'application/json',
        // Content-Type will be set automatically for multipart
      };

  /// [Endpoint Groups
  static AuthEndpoints get auth => AuthEndpoints();
  static ProfileEndpoints get profile => ProfileEndpoints();
  // static UserEndpoints get user => UserEndpoints();
  static PlaylistEndpoints get playlist => PlaylistEndpoints();

  static ServerEndpoints get server => ServerEndpoints();

  static SyncEndpoint get sync => SyncEndpoint();
  static TeacherProfileEndpoints get teachprofile => TeacherProfileEndpoints();
  static TeacherDashboardEndpoints get dashboard => TeacherDashboardEndpoints();
}

/// [Authentication Endpoints]
class AuthEndpoints {
  static const String _base = '${ApiConstants.baseUrl}/auth';

  final String login = '$_base/login';
  final String delete_account = '$_base/delete-account';

  final String refreshToken = '$_base/refresh-token';
  final String security5 = '$_base/student/security-questions';
  final String securityQuestionMatch = '$_base/student/verify-security';
  final String resetPass = '$_base/student/reset-password';
}

class ProfileEndpoints {
  static const String _base = ApiConstants.baseUrl;

  final String fetchProfile = '$_base/student/profile';
  final String helpSupport = '$_base/student/support';
  final String updateProfile = '$_base/student/profile';
}

// class UserEndpoints {
//   static const String _base = '${ApiConstants.baseUrl}/user';
//
//   final String profile = '$_base/profile';
//   final String updateProfile = '$_base/update-profile';
// }

class PlaylistEndpoints {
  static const String _base = '${ApiConstants.baseUrl}/playlist';

  final String addPlaylist = '$_base/add-playlist';
  final String getPlaylist = '$_base/get-playlist';
  String deletePlaylist(String id) => '$_base/delete-playlist/$id';
}

class ServerEndpoints {
  static const String _base = '${ApiConstants.baseUrl}/server';

  final String connectTv = '$_base/connect-tv';
  final String getPlayUrl = '$_base/get-play-url';
}

class SyncEndpoint {
  static const String _base = '${ApiConstants.baseUrl}/student';

  final String syncStudentActivities = "$_base/activities/sync";
  final String syncGetStudentActivities = "$_base/activities";
}

class TeacherProfileEndpoints {
  static const String _base = '${ApiConstants.baseUrl}/teacher';

  final String fetchProfile = '$_base/profile';
  final String updateProfile = '$_base/profile';
}

class TeacherDashboardEndpoints {
  static const String _base = '${ApiConstants.baseUrl}/teacher';

  final String fetchDashboard = '$_base/dashboard';
  final String fetchStudent = '$_base/students';
  final String fetchSubject = '$_base/subjects';
  String fetchTeacher(String studentId) =>
      '$_base/students/$studentId/overview';
}
