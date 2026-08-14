// class GetTeacherStudentResponseModel {
//   final List<StudentItem> items;
//   final Meta meta;

//   GetTeacherStudentResponseModel({
//     required this.items,
//     required this.meta,
//   });

//   factory GetTeacherStudentResponseModel.fromJson(Map<String, dynamic> json) {
//     return GetTeacherStudentResponseModel(
//       items: (json['items'] as List? ?? [])
//           .map((e) => StudentItem.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       meta: Meta.fromJson(json['meta'] ?? {}),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'items': items.map((e) => e.toJson()).toList(),
//       'meta': meta.toJson(),
//     };
//   }
// }

// class StudentItem {
//   final String id;
//   final String studentName;
//   final String userId;
//   final String schoolName;
//   final String gradeLevel;
//   final String status;

//   StudentItem({
//     required this.id,
//     required this.studentName,
//     required this.userId,
//     required this.schoolName,
//     required this.gradeLevel,
//     required this.status,
//   });

//   factory StudentItem.fromJson(Map<String, dynamic> json) {
//     return StudentItem(
//       id: json['_id']?.toString() ?? '',
//       studentName: json['studentName']?.toString() ?? '',
//       userId: json['userId']?.toString() ?? '',
//       schoolName: json['schoolName']?.toString() ?? '',
//       gradeLevel: json['gradeLevel']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'studentName': studentName,
//       'userId': userId,
//       'schoolName': schoolName,
//       'gradeLevel': gradeLevel,
//       'status': status,
//     };
//   }
// }

// class Meta {
//   final int page;
//   final int limit;
//   final int total;
//   final int totalPages;

//   Meta({
//     required this.page,
//     required this.limit,
//     required this.total,
//     required this.totalPages,
//   });

//   factory Meta.fromJson(Map<String, dynamic> json) {
//     return Meta(
//       page: json['page'] ?? 0,
//       limit: json['limit'] ?? 0,
//       total: json['total'] ?? 0,
//       totalPages: json['totalPages'] ?? 0,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'page': page,
//       'limit': limit,
//       'total': total,
//       'totalPages': totalPages,
//     };
//   }
// }


class GetTeacherStudentResponseModel {
  final List<StudentItem> items;
  final Meta meta;

  GetTeacherStudentResponseModel({
    required this.items,
    required this.meta,
  });

  factory GetTeacherStudentResponseModel.fromJson(Map<String, dynamic> json) {
    return GetTeacherStudentResponseModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => StudentItem.fromJson(e))
          .toList(),
      meta: Meta.fromJson(json['meta']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items.map((e) => e.toJson()).toList(),
      'meta': meta.toJson(),
    };
  }
}

class StudentItem {
  final String id;
  final String studentName;
  final String userId;
  final String schoolName;
  final String gradeLevel;
  final String status;
  final DateTime? lastLoginAt;
  final double avgQuizScore;

  StudentItem({
    required this.id,
    required this.studentName,
    required this.userId,
    required this.schoolName,
    required this.gradeLevel,
    required this.status,
    this.lastLoginAt,
    required this.avgQuizScore,
  });

  factory StudentItem.fromJson(Map<String, dynamic> json) {
    return StudentItem(
      id: json['_id'] ?? '',
      studentName: json['studentName'] ?? '',
      userId: json['userId'] ?? '',
      schoolName: json['schoolName'] ?? '',
      gradeLevel: json['gradeLevel'] ?? '',
      status: json['status'] ?? '',
      lastLoginAt: json['lastLoginAt'] != null
          ? DateTime.parse(json['lastLoginAt'])
          : null,
      avgQuizScore: (json['avgQuizScore'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'studentName': studentName,
      'userId': userId,
      'schoolName': schoolName,
      'gradeLevel': gradeLevel,
      'status': status,
      'lastLoginAt': lastLoginAt?.toIso8601String(),
      'avgQuizScore': avgQuizScore,
    };
  }
}

class Meta {
  final int page;
  final int limit;
  final int total;
  final int totalPages;

  Meta({
    required this.page,
    required this.limit,
    required this.total,
    required this.totalPages,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      page: json['page'] ?? 0,
      limit: json['limit'] ?? 0,
      total: json['total'] ?? 0,
      totalPages: json['totalPages'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'limit': limit,
      'total': total,
      'totalPages': totalPages,
    };
  }
}