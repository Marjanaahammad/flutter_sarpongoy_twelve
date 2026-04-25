// class GetStudentDetailsResponseModel {
//   final bool? success;
//   final String? message;
//   final StudentDetailsData? data;

//   GetStudentDetailsResponseModel({this.success, this.message, this.data});

//   factory GetStudentDetailsResponseModel.fromJson(Map<String, dynamic> json) {
//     return GetStudentDetailsResponseModel(
//       success: json['success'],
//       message: json['message'],
//       data: StudentDetailsData.fromJson(
//         json.containsKey('data') ? json['data'] : json,
//       ),
//     );
//   }
// }

// class StudentDetailsData {
//   final Student? student;
//   final ProgressSheet? progressSheet;
//   final Map<String, StudentRecentWork>? recentWork;
//   final Map<String, SubjectWisePercentage>? subjectWise;

//   StudentDetailsData({
//     this.student,
//     this.progressSheet,
//     this.recentWork,
//     this.subjectWise,
//   });

//   factory StudentDetailsData.fromJson(Map<String, dynamic> json) {
//     return StudentDetailsData(
//       student: json['student'] != null
//           ? Student.fromJson(json['student'])
//           : null,
//       progressSheet: json['progressSheet'] != null
//           ? ProgressSheet.fromJson(json['progressSheet'])
//           : null,
//       recentWork: json['recentWork'] != null
//           ? (json['recentWork'] as Map<String, dynamic>).map(
//               (key, value) => MapEntry(key, StudentRecentWork.fromJson(value)),
//             )
//           : null,
//       subjectWise: json['subjectWise'] != null
//           ? (json['subjectWise'] as Map<String, dynamic>).map(
//               (key, value) =>
//                   MapEntry(key, SubjectWisePercentage.fromJson(value)),
//             )
//           : null,
//     );
//   }
// }

// class Student {
//   final String? id;
//   final String? studentName;
//   final String? userId;
//   final String? schoolName;
//   final String? schoolCode;
//   final String? gradeLevel;
//   final String? status;
//   final Picture? picture;

//   Student({
//     this.id,
//     this.studentName,
//     this.userId,
//     this.schoolName,
//     this.schoolCode,
//     this.gradeLevel,
//     this.status,
//     this.picture,
//   });

//   factory Student.fromJson(Map<String, dynamic> json) {
//     return Student(
//       id: json['_id'],
//       studentName: json['studentName'],
//       userId: json['userId'],
//       schoolName: json['schoolName'],
//       schoolCode: json['schoolCode'],
//       gradeLevel: json['gradeLevel'],
//       status: json['status'],
//       picture: json['picture'] != null
//           ? Picture.fromJson(json['picture'])
//           : null,
//     );
//   }
// }

// class Picture {
//   final String? publicId;
//   final String? url;

//   Picture({this.publicId, this.url});

//   factory Picture.fromJson(Map<String, dynamic> json) {
//     return Picture(publicId: json['public_id'], url: json['url']);
//   }
// }

// class ProgressSheet {
//   final List<CourseWiseOverview>? courseWiseOverview;
//   final ActivityMarks? marks;

//   ProgressSheet({this.courseWiseOverview, this.marks});

//   factory ProgressSheet.fromJson(Map<String, dynamic> json) {
//     return ProgressSheet(
//       courseWiseOverview: (json['courseWiseOverview'] as List?)
//           ?.map((e) => CourseWiseOverview.fromJson(e))
//           .toList(),
//       marks: json['marks'] != null
//           ? ActivityMarks.fromJson(json['marks'])
//           : null,
//     );
//   }
// }

// class CourseWiseOverview {
//   final String? courseId;
//   final String? subject;
//   final int? activityCount;
//   final num? totalHours;
//   final num? avgDailyHours;
//   final num? avgQuizScore;
//   final num? completionRate;

//   CourseWiseOverview({
//     this.courseId,
//     this.subject,
//     this.activityCount,
//     this.totalHours,
//     this.avgDailyHours,
//     this.avgQuizScore,
//     this.completionRate,
//   });

//   factory CourseWiseOverview.fromJson(Map<String, dynamic> json) {
//     return CourseWiseOverview(
//       courseId: json['courseId'],
//       subject: json['subject'],
//       activityCount: json['activityCount'],
//       totalHours: json['totalHours'],
//       avgDailyHours: json['avgDailyHours'],
//       avgQuizScore: json['avgQuizScore'],
//       completionRate: json['completionRate'] != null
//           ? (json['completionRate'] as num).toDouble()
//           : null,
//     );
//   }
// }

// class ActivityMarks {
//   final List<DayActivity>? days;
//   final ActivityTotals? totals;

//   ActivityMarks({this.days, this.totals});

//   factory ActivityMarks.fromJson(Map<String, dynamic> json) {
//     return ActivityMarks(
//       days: (json['days'] as List?)
//           ?.map((e) => DayActivity.fromJson(e))
//           .toList(),
//       totals: json['totals'] != null
//           ? ActivityTotals.fromJson(json['totals'])
//           : null,
//     );
//   }
// }

// class DayActivity {
//   final String? label;
//   final String? date;
//   final int? activityCount;
//   final num? totalHours;
//   final num? avgQuizScore;

//   DayActivity({
//     this.label,
//     this.date,
//     this.activityCount,
//     this.totalHours,
//     this.avgQuizScore,
//   });

//   factory DayActivity.fromJson(Map<String, dynamic> json) {
//     return DayActivity(
//       label: json['label'],
//       date: json['date'],
//       activityCount: json['activityCount'],
//       totalHours: json['totalHours'],
//       avgQuizScore: json['avgQuizScore'],
//     );
//   }
// }

// class ActivityTotals {
//   final int? activityCount;
//   final num? totalHours;
//   final num? avgQuizScore;
//   final num? avgDailyHours;

//   ActivityTotals({
//     this.activityCount,
//     this.totalHours,
//     this.avgQuizScore,
//     this.avgDailyHours,
//   });

//   factory ActivityTotals.fromJson(Map<String, dynamic> json) {
//     return ActivityTotals(
//       activityCount: json['activityCount'],
//       totalHours: json['totalHours'],
//       avgQuizScore: json['avgQuizScore'],
//       avgDailyHours: json['avgDailyHours'],
//     );
//   }
// }

// class StudentRecentWork {
//   final num? practice;
//   final num? quiz;
//   final num? practiceOriginalScore;
//   final num? quizOriginalScore;
//   final num? lowestQuizScore;

//   StudentRecentWork({
//     this.practice,
//     this.quiz,
//     this.practiceOriginalScore,
//     this.quizOriginalScore,
//     this.lowestQuizScore,
//   });

//   factory StudentRecentWork.fromJson(Map<String, dynamic> json) {
//     return StudentRecentWork(
//       practice: json['practice'],
//       quiz: json['quiz'],
//       practiceOriginalScore: json['practice original Score'],
//       quizOriginalScore: json['quiz original score'],
//       lowestQuizScore: json['lowest quiz score'],
//     );
//   }
// }

// class SubjectWisePercentage {
//   final num? percentage;

//   SubjectWisePercentage({this.percentage});

//   factory SubjectWisePercentage.fromJson(Map<String, dynamic> json) {
//     return SubjectWisePercentage(percentage: json['percentage']);
//   }
// }
class GetStudentDetailsResponseModel {
  final bool? success;
  final String? message;
  final StudentDetailsData? data;

  GetStudentDetailsResponseModel({this.success, this.message, this.data});

  factory GetStudentDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return GetStudentDetailsResponseModel(
      success: json['success'],
      message: json['message'],
      data: json['data'] != null
          ? StudentDetailsData.fromJson(json['data'])
          : StudentDetailsData.fromJson(json),
    );
  }

  Map<String, dynamic> toJson() {
    return {'success': success, 'message': message, 'data': data?.toJson()};
  }
}

class StudentDetailsData {
  final Student? student;
  final ProgressSheet? progressSheet;
  final Map<String, StudentRecentWork>? recentWork;
  final Map<String, SubjectWisePercentage>? subjectWise;

  StudentDetailsData({
    this.student,
    this.progressSheet,
    this.recentWork,
    this.subjectWise,
  });

  factory StudentDetailsData.fromJson(Map<String, dynamic> json) {
    return StudentDetailsData(
      student: json['student'] != null
          ? Student.fromJson(json['student'])
          : null,
      progressSheet: json['progressSheet'] != null
          ? ProgressSheet.fromJson(json['progressSheet'])
          : null,
      recentWork: json['recentWork'] != null
          ? (json['recentWork'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                key,
                StudentRecentWork.fromJson(value as Map<String, dynamic>),
              ),
            )
          : null,
      subjectWise: json['subjectWise'] != null
          ? (json['subjectWise'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                key,
                SubjectWisePercentage.fromJson(value as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'student': student?.toJson(),
      'progressSheet': progressSheet?.toJson(),
      'recentWork': recentWork?.map(
        (key, value) => MapEntry(key, value.toJson()),
      ),
      'subjectWise': subjectWise?.map(
        (key, value) => MapEntry(key, value.toJson()),
      ),
    };
  }
}

class Student {
  final String? id;
  final String? studentName;
  final String? userId;
  final String? schoolName;
  final String? schoolCode;
  final String? gradeLevel;
  final String? status;
  final Picture? picture;

  Student({
    this.id,
    this.studentName,
    this.userId,
    this.schoolName,
    this.schoolCode,
    this.gradeLevel,
    this.status,
    this.picture,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'],
      studentName: json['studentName'],
      userId: json['userId'],
      schoolName: json['schoolName'],
      schoolCode: json['schoolCode'],
      gradeLevel: json['gradeLevel'],
      status: json['status'],
      picture: json['picture'] != null
          ? Picture.fromJson(json['picture'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'studentName': studentName,
      'userId': userId,
      'schoolName': schoolName,
      'schoolCode': schoolCode,
      'gradeLevel': gradeLevel,
      'status': status,
      'picture': picture?.toJson(),
    };
  }
}

class Picture {
  final String? publicId;
  final String? url;

  Picture({this.publicId, this.url});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(publicId: json['public_id'], url: json['url']);
  }

  Map<String, dynamic> toJson() {
    return {'public_id': publicId, 'url': url};
  }
}

class ProgressSheet {
  final List<CourseWiseOverview>? courseWiseOverview;
  final ActivityMarks? marks;

  ProgressSheet({this.courseWiseOverview, this.marks});

  factory ProgressSheet.fromJson(Map<String, dynamic> json) {
    return ProgressSheet(
      courseWiseOverview: (json['courseWiseOverview'] as List?)
          ?.map((e) => CourseWiseOverview.fromJson(e as Map<String, dynamic>))
          .toList(),
      marks: json['marks'] != null
          ? ActivityMarks.fromJson(json['marks'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'courseWiseOverview': courseWiseOverview?.map((e) => e.toJson()).toList(),
      'marks': marks?.toJson(),
    };
  }
}

class CourseWiseOverview {
  final String? courseId;
  final String? subject;
  final int? activityCount;
  final num? totalHours;
  final num? avgDailyHours;
  final num? avgQuizScore;
  final num? completionRate;
  final ActivityMarks? marks;

  CourseWiseOverview({
    this.courseId,
    this.subject,
    this.activityCount,
    this.totalHours,
    this.avgDailyHours,
    this.avgQuizScore,
    this.completionRate,
    this.marks,
  });

  factory CourseWiseOverview.fromJson(Map<String, dynamic> json) {
    return CourseWiseOverview(
      courseId: json['courseId'],
      subject: json['subject'],
      activityCount: json['activityCount'],
      totalHours: json['totalHours'],
      avgDailyHours: json['avgDailyHours'],
      avgQuizScore: json['avgQuizScore'],
      completionRate: json['completionRate'],
      marks: json['marks'] != null ? ActivityMarks.fromJson(json['marks']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'courseId': courseId,
      'subject': subject,
      'activityCount': activityCount,
      'totalHours': totalHours,
      'avgDailyHours': avgDailyHours,
      'avgQuizScore': avgQuizScore,
      'completionRate': completionRate,
      'marks': marks?.toJson(),
    };
  }
}

class ActivityMarks {
  final List<DayActivity>? days;
  final ActivityTotals? totals;

  ActivityMarks({this.days, this.totals});

  factory ActivityMarks.fromJson(Map<String, dynamic> json) {
    return ActivityMarks(
      days: (json['days'] as List?)
          ?.map((e) => DayActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      totals: json['totals'] != null
          ? ActivityTotals.fromJson(json['totals'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'days': days?.map((e) => e.toJson()).toList(),
      'totals': totals?.toJson(),
    };
  }
}

class DayActivity {
  final String? label;
  final String? subject;
  final String? date;
  final int? activityCount;
  final num? totalHours;
  final num? avgQuizScore;

  DayActivity({
    this.label,
    this.subject,
    this.date,
    this.activityCount,
    this.totalHours,
    this.avgQuizScore,
  });

  factory DayActivity.fromJson(Map<String, dynamic> json) {
    return DayActivity(
      label: json['label'],
      subject: json['subject'],
      date: json['date'],
      activityCount: json['activityCount'],
      totalHours: json['totalHours'],
      avgQuizScore: json['avgQuizScore'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'subject': subject,
      'date': date,
      'activityCount': activityCount,
      'totalHours': totalHours,
      'avgQuizScore': avgQuizScore,
    };
  }
}

class ActivityTotals {
  final int? activityCount;
  final num? totalHours;
  final num? avgQuizScore;
  final num? avgDailyHours;

  ActivityTotals({
    this.activityCount,
    this.totalHours,
    this.avgQuizScore,
    this.avgDailyHours,
  });

  factory ActivityTotals.fromJson(Map<String, dynamic> json) {
    return ActivityTotals(
      activityCount: json['activityCount'],
      totalHours: json['totalHours'],
      avgQuizScore: json['avgQuizScore'],
      avgDailyHours: json['avgDailyHours'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'activityCount': activityCount,
      'totalHours': totalHours,
      'avgQuizScore': avgQuizScore,
      'avgDailyHours': avgDailyHours,
    };
  }
}

class StudentRecentWork {
  final num? practice;
  final num? quiz;
  final num? practiceOriginalScore;
  final num? quizOriginalScore;
  final num? lowestQuizScore;
  final String? practiceDate;
  final String? quizDate;

  StudentRecentWork({
    this.practice,
    this.quiz,
    this.practiceOriginalScore,
    this.quizOriginalScore,
    this.lowestQuizScore,
    this.practiceDate,
    this.quizDate,
  });

  factory StudentRecentWork.fromJson(Map<String, dynamic> json) {
    return StudentRecentWork(
      practice: json['practice'],
      quiz: json['quiz'],
      practiceOriginalScore: json['practice original Score'],
      quizOriginalScore: json['quiz original score'],
      lowestQuizScore: json['lowest quiz score'],
      practiceDate: json['practiceDate'],
      quizDate: json['quizDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'practice': practice,
      'quiz': quiz,
      'practice original Score': practiceOriginalScore,
      'quiz original score': quizOriginalScore,
      'lowest quiz score': lowestQuizScore,
      'practiceDate': practiceDate,
      'quizDate': quizDate,
    };
  }
}

class SubjectWisePercentage {
  final num? percentage;
  final String? date;

  SubjectWisePercentage({this.percentage, this.date});

  factory SubjectWisePercentage.fromJson(Map<String, dynamic> json) {
    return SubjectWisePercentage(
      percentage: json['percentage'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'percentage': percentage, 'date': date};
  }
}
