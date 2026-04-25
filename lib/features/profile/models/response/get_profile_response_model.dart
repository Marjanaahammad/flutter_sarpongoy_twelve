class GetStudentProfileResponseModel {
  final Student student;

  GetStudentProfileResponseModel({
    required this.student,
  });

  factory GetStudentProfileResponseModel.fromJson(Map<String, dynamic> json) {
    return GetStudentProfileResponseModel(
      student: Student.fromJson(json['student']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'student': student.toJson(),
    };
  }
}

class Student {
  final String id;
  final String name;
  final String userId;
  final String gradeLevel;
  final String status;
  final School school;
  final StudentMedia picture;
  final StudentMedia file;

  Student({
    required this.id,
    required this.name,
    required this.userId,
    required this.gradeLevel,
    required this.status,
    required this.school,
    required this.picture,
    required this.file,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      userId: json['userId'] ?? '',
      gradeLevel: json['gradeLevel'] ?? '',
      status: json['status'] ?? '',
      school: School.fromJson(json['school'] ?? {}),
      picture: StudentMedia.fromJson(json['picture'] ?? {}),
      file: StudentMedia.fromJson(json['file'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'userId': userId,
      'gradeLevel': gradeLevel,
      'status': status,
      'school': school.toJson(),
      'picture': picture.toJson(),
      'file': file.toJson(),
    };
  }
}

class School {
  final String id;
  final String name;
  final String schoolCode;

  School({
    required this.id,
    required this.name,
    required this.schoolCode,
  });

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      schoolCode: json['schoolCode'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'schoolCode': schoolCode,
    };
  }
}

class StudentMedia {
  final String publicId;
  final String url;

  StudentMedia({
    required this.publicId,
    required this.url,
  });

  factory StudentMedia.fromJson(Map<String, dynamic> json) {
    return StudentMedia(
      publicId: json['public_id'] ?? '',
      url: json['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'public_id': publicId,
      'url': url,
    };
  }
}