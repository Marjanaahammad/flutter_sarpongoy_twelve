class LoginRequestModel {
  final String userId;
  final String password;
  final String mac_id;

  LoginRequestModel({
    required this.userId,
    required this.password,
    required this.mac_id
  });

  /// Convert Dart object to JSON (for API request)
  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "password": password,
      "mac_id": mac_id,
    };
  }
}