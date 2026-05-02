class LoginRequestModel {
  final String userId;
  final String password;

  LoginRequestModel({
    required this.userId,
    required this.password,
  });

  /// Convert Dart object to JSON (for API request)
  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "password": password,
    };
  }
}