class UpdateTeacherProfileResponseModel {
  final User? user;
  final Teacher? teacher;

  UpdateTeacherProfileResponseModel({
    this.user,
    this.teacher,
  });

  factory UpdateTeacherProfileResponseModel.fromJson(Map<String, dynamic> json) {
    return UpdateTeacherProfileResponseModel(
      user: json["user"] != null ? User.fromJson(json["user"]) : null,
      teacher: json["teacher"] != null ? Teacher.fromJson(json["teacher"]) : null,
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
  final Profile? profile;
  final VerificationInfo? verificationInfo;
  final PasswordResetOTP? passwordResetOTP;
  final String? id;
  final String? name;
  final String? userId;
  final String? role;
  final String? status;
  final String? school;
  final String? gradeLevel;
  final String? passwordResetToken;
  final bool? isEmailVerified;
  final String? deleteReason;
  final String? createdAt;
  final String? updatedAt;
  final int? v;
  final String? firstName;
  final String? lastName;
  final String? bio;
  final String? phone;

  User({
    this.profile,
    this.verificationInfo,
    this.passwordResetOTP,
    this.id,
    this.name,
    this.userId,
    this.role,
    this.status,
    this.school,
    this.gradeLevel,
    this.passwordResetToken,
    this.isEmailVerified,
    this.deleteReason,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.firstName,
    this.lastName,
    this.bio,
    this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      profile: json["profile"] != null ? Profile.fromJson(json["profile"]) : null,
      verificationInfo: json["verificationInfo"] != null
          ? VerificationInfo.fromJson(json["verificationInfo"])
          : null,
      passwordResetOTP: json["passwordResetOTP"] != null
          ? PasswordResetOTP.fromJson(json["passwordResetOTP"])
          : null,
      id: json["_id"],
      name: json["name"],
      userId: json["userId"],
      role: json["role"],
      status: json["status"],
      school: json["school"],
      gradeLevel: json["gradeLevel"],
      passwordResetToken: json["password_reset_token"],
      isEmailVerified: json["isEmailVerified"],
      deleteReason: json["deleteReason"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      v: json["__v"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      bio: json["bio"],
      phone: json["phone"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "profile": profile?.toJson(),
      "verificationInfo": verificationInfo?.toJson(),
      "passwordResetOTP": passwordResetOTP?.toJson(),
      "_id": id,
      "name": name,
      "userId": userId,
      "role": role,
      "status": status,
      "school": school,
      "gradeLevel": gradeLevel,
      "password_reset_token": passwordResetToken,
      "isEmailVerified": isEmailVerified,
      "deleteReason": deleteReason,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "__v": v,
      "firstName": firstName,
      "lastName": lastName,
      "bio": bio,
      "phone": phone,
    };
  }
}

class Teacher {
  final Picture? picture;
  final FileData? file;
  final String? id;
  final String? user;
  final String? school;
  final List<String>? courses;
  final String? name;
  final String? gradeLevel;
  final String? status;
  final String? createdAt;
  final String? updatedAt;
  final int? v;
  final String? bio;
  final String? phone;
  final String? firstName;
  final String? lastName;

  Teacher({
    this.picture,
    this.file,
    this.id,
    this.user,
    this.school,
    this.courses,
    this.name,
    this.gradeLevel,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.bio,
    this.phone,
    this.firstName,
    this.lastName,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      picture: json["picture"] != null ? Picture.fromJson(json["picture"]) : null,
      file: json["file"] != null ? FileData.fromJson(json["file"]) : null,
      id: json["_id"],
      user: json["user"],
      school: json["school"],
      courses: json["courses"] != null
          ? List<String>.from(json["courses"])
          : [],
      name: json["name"],
      gradeLevel: json["gradeLevel"],
      status: json["status"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      v: json["__v"],
      bio: json["bio"],
      phone: json["phone"],
      firstName: json["firstName"],
      lastName: json["lastName"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "picture": picture?.toJson(),
      "file": file?.toJson(),
      "_id": id,
      "user": user,
      "school": school,
      "courses": courses,
      "name": name,
      "gradeLevel": gradeLevel,
      "status": status,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "__v": v,
      "bio": bio,
      "phone": phone,
      "firstName": firstName,
      "lastName": lastName,
    };
  }
}

class Profile {
  final String? publicId;
  final String? url;

  Profile({this.publicId, this.url});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      publicId: json["public_id"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "public_id": publicId,
      "url": url,
    };
  }
}

class Picture {
  final String? publicId;
  final String? url;

  Picture({this.publicId, this.url});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      publicId: json["public_id"],
      url: json["url"],
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
      publicId: json["public_id"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "public_id": publicId,
      "url": url,
    };
  }
}

class VerificationInfo {
  final bool? verified;
  final String? token;

  VerificationInfo({this.verified, this.token});

  factory VerificationInfo.fromJson(Map<String, dynamic> json) {
    return VerificationInfo(
      verified: json["verified"],
      token: json["token"],
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
      code: json["code"],
      verified: json["verified"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "code": code,
      "verified": verified,
    };
  }
}