class TeacherProfileResponseModel {
  final User? user;
  final Teacher? teacher;

  TeacherProfileResponseModel({
    this.user,
    this.teacher,
  });

  factory TeacherProfileResponseModel.fromJson(Map<String, dynamic> json) {
    return TeacherProfileResponseModel(
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      teacher: json['teacher'] != null ? Teacher.fromJson(json['teacher']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "user": user?.toJson(),
      "teacher": teacher?.toJson(),
    };
  }
}

class User {
  final String? id;
  final String? name;
  final String? userId;
  final String? role;
  final String? status;
  final String? school;
  final String? gradeLevel;
  final VerificationInfo? verificationInfo;
  final String? passwordResetToken;
  final PasswordResetOTP? passwordResetOTP;
  final bool? isEmailVerified;
  final String? deleteReason;
  final String? firstName;
  final String? lastName;
  final String? bio;
  final String? phone;
  final String? createdAt;
  final String? updatedAt;

  User({
    this.id,
    this.name,
    this.userId,
    this.role,
    this.status,
    this.school,
    this.gradeLevel,
    this.verificationInfo,
    this.passwordResetToken,
    this.passwordResetOTP,
    this.isEmailVerified,
    this.deleteReason,
    this.firstName,
    this.lastName,
    this.bio,
    this.phone,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      name: json['name'],
      userId: json['userId'],
      role: json['role'],
      status: json['status'],
      school: json['school'],
      gradeLevel: json['gradeLevel'],
      verificationInfo: json['verificationInfo'] != null
          ? VerificationInfo.fromJson(json['verificationInfo'])
          : null,
      passwordResetToken: json['password_reset_token'],
      passwordResetOTP: json['passwordResetOTP'] != null
          ? PasswordResetOTP.fromJson(json['passwordResetOTP'])
          : null,
      isEmailVerified: json['isEmailVerified'],
      deleteReason: json['deleteReason'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      bio: json['bio'],
      phone: json['phone'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "name": name,
      "userId": userId,
      "role": role,
      "status": status,
      "school": school,
      "gradeLevel": gradeLevel,
      "verificationInfo": verificationInfo?.toJson(),
      "password_reset_token": passwordResetToken,
      "passwordResetOTP": passwordResetOTP?.toJson(),
      "isEmailVerified": isEmailVerified,
      "deleteReason": deleteReason,
      "firstName": firstName,
      "lastName": lastName,
      "bio": bio,
      "phone": phone,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
    };
  }
}

class VerificationInfo {
  final bool? verified;
  final String? token;

  VerificationInfo({this.verified, this.token});

  factory VerificationInfo.fromJson(Map<String, dynamic> json) {
    return VerificationInfo(
      verified: json['verified'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "verified": verified,
      "token": token,
    };
  }
}

class PasswordResetOTP {
  final String? code;
  final bool? verified;

  PasswordResetOTP({this.code, this.verified});

  factory PasswordResetOTP.fromJson(Map<String, dynamic> json) {
    return PasswordResetOTP(
      code: json['code'],
      verified: json['verified'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "code": code,
      "verified": verified,
    };
  }
}

class Teacher {
  final String? id;
  final String? user;
  final Picture? picture;
  final FileData? file;
  final School? school;
  final List<Course>? courses;
  final String? name;
  final String? gradeLevel;
  final String? status;
  final String? createdAt;
  final String? updatedAt;

  Teacher({
    this.id,
    this.user,
    this.picture,
    this.file,
    this.school,
    this.courses,
    this.name,
    this.gradeLevel,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      id: json['_id'],
      user: json['user'],
      picture:
          json['picture'] != null ? Picture.fromJson(json['picture']) : null,
      file: json['file'] != null ? FileData.fromJson(json['file']) : null,
      school: json['school'] != null ? School.fromJson(json['school']) : null,
      courses: json['courses'] != null
          ? (json['courses'] as List)
              .map((e) => Course.fromJson(e))
              .toList()
          : [],
      name: json['name'],
      gradeLevel: json['gradeLevel'],
      status: json['status'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "user": user,
      "picture": picture?.toJson(),
      "file": file?.toJson(),
      "school": school?.toJson(),
      "courses": courses?.map((e) => e.toJson()).toList(),
      "name": name,
      "gradeLevel": gradeLevel,
      "status": status,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
    };
  }
}

class Picture {
  final String? publicId;
  final String? url;

  Picture({this.publicId, this.url});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      publicId: json['public_id'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "public_id": publicId,
      "url": url,
    };
  }
}

class FileData {
  final String? publicId;
  final String? url;

  FileData({this.publicId, this.url});

  factory FileData.fromJson(Map<String, dynamic> json) {
    return FileData(
      publicId: json['public_id'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "public_id": publicId,
      "url": url,
    };
  }
}

class School {
  final String? id;
  final String? name;
  final String? schoolCode;

  School({this.id, this.name, this.schoolCode});

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      id: json['_id'],
      name: json['name'],
      schoolCode: json['schoolCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "name": name,
      "schoolCode": schoolCode,
    };
  }
}

class Course {
  final String? id;
  final String? name;

  Course({this.id, this.name});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['_id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "name": name,
    };
  }
}