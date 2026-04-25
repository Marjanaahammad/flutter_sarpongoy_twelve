class LoginResponseModel {
  final String accessToken;
  final String refreshToken;
  final UserModel user;

  LoginResponseModel({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      accessToken: json['accessToken'] ?? '',
      refreshToken: json['refreshToken'] ?? '',
      user: UserModel.fromJson(json['user'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'refreshToken': refreshToken,
      'user': user.toJson(),
    };
  }
}

class UserModel {
  final String id;
  final String name;
  final String userId;
  final String role;
  final String status;
  final String school;
  final String gradeLevel;

  UserModel({
    required this.id,
    required this.name,
    required this.userId,
    required this.role,
    required this.status,
    required this.school,
    required this.gradeLevel,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      userId: json['userId'] ?? '',
      role: json['role'] ?? '',
      status: json['status'] ?? '',
      school: json['school'] ?? '',
      gradeLevel: json['gradeLevel'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'userId': userId,
      'role': role,
      'status': status,
      'school': school,
      'gradeLevel': gradeLevel,
    };
  }
}
