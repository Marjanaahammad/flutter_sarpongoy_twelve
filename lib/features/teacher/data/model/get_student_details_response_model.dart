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



// import 'package:flutter/material.dart';

// class GetStudentDetailsResponseModel {
//   final Student? student;
//   final Filters? filters;
//   final Overview? overview;

//   GetStudentDetailsResponseModel({
//     this.student,
//     this.filters,
//     this.overview,
//   });

//   factory GetStudentDetailsResponseModel.fromJson(Map<String, dynamic> json) {
//     return GetStudentDetailsResponseModel(
//       student:
//           json['student'] != null ? Student.fromJson(json['student']) : null,
//       filters:
//           json['filters'] != null ? Filters.fromJson(json['filters']) : null,
//       overview:
//           json['overview'] != null ? Overview.fromJson(json['overview']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'student': student?.toJson(),
//         'filters': filters?.toJson(),
//         'overview': overview?.toJson(),
//       };
// }

// class Student {
//   final String? id;
//   final String? studentName;
//   final String? userId;
//   final String? schoolName;
//   final String? schoolCode;
//   final String? gradeLevel;
//   final String? status;
//   final String? lastLoginAt;
//   final Picture? picture;

//   Student({
//     this.id,
//     this.studentName,
//     this.userId,
//     this.schoolName,
//     this.schoolCode,
//     this.gradeLevel,
//     this.status,
//     this.lastLoginAt,
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
//       lastLoginAt: json['lastLoginAt'],
//       picture:
//           json['picture'] != null ? Picture.fromJson(json['picture']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         '_id': id,
//         'studentName': studentName,
//         'userId': userId,
//         'schoolName': schoolName,
//         'schoolCode': schoolCode,
//         'gradeLevel': gradeLevel,
//         'status': status,
//         'lastLoginAt': lastLoginAt,
//         'picture': picture?.toJson(),
//       };
// }

// class Picture {
//   final String? publicId;
//   final String? url;

//   Picture({
//     this.publicId,
//     this.url,
//   });

//   factory Picture.fromJson(Map<String, dynamic> json) {
//     return Picture(
//       publicId: json['public_id'],
//       url: json['url'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'public_id': publicId,
//         'url': url,
//       };
// }

// class Filters {
//   final String? gradeLevel;
//   final String? timePeriod;
//   final String? subject;
//   final List<String>? gradeLevels;
//   final List<String>? timePeriods;
//   final List<String>? subjects;

//   Filters({
//     this.gradeLevel,
//     this.timePeriod,
//     this.subject,
//     this.gradeLevels,
//     this.timePeriods,
//     this.subjects,
//   });

//   factory Filters.fromJson(Map<String, dynamic> json) {
//     return Filters(
//       gradeLevel: json['gradeLevel'],
//       timePeriod: json['timePeriod'],
//       subject: json['subject'],
//       gradeLevels: (json['gradeLevels'] as List?)
//           ?.map((e) => e.toString())
//           .toList(),
//       timePeriods: (json['timePeriods'] as List?)
//           ?.map((e) => e.toString())
//           .toList(),
//       subjects:
//           (json['subjects'] as List?)?.map((e) => e.toString()).toList(),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'gradeLevel': gradeLevel,
//         'timePeriod': timePeriod,
//         'subject': subject,
//         'gradeLevels': gradeLevels,
//         'timePeriods': timePeriods,
//         'subjects': subjects,
//       };
// }

// class Overview {
//   final Summary? summary;
//   final List<SubjectProgress>? subjectProgress;
//   final List<CourseWiseOverview>? courseWiseOverview;
//   final WeeklyActivity? weeklyActivity;
//   final List<ActivityBreakdown>? activityBreakdown;
//   final List<RecentWork>? recentWork;

//   Overview({
//     this.summary,
//     this.subjectProgress,
//     this.courseWiseOverview,
//     this.weeklyActivity,
//     this.activityBreakdown,
//     this.recentWork,
//   });

//   factory Overview.fromJson(Map<String, dynamic> json) {
//     return Overview(
//       summary:
//           json['summary'] != null ? Summary.fromJson(json['summary']) : null,
//       subjectProgress: (json['subjectProgress'] as List?)
//           ?.map((e) => SubjectProgress.fromJson(e))
//           .toList(),
//       courseWiseOverview: (json['courseWiseOverview'] as List?)
//           ?.map((e) => CourseWiseOverview.fromJson(e))
//           .toList(),
//       weeklyActivity: json['weeklyActivity'] != null
//           ? WeeklyActivity.fromJson(json['weeklyActivity'])
//           : null,
//       activityBreakdown: (json['activityBreakdown'] as List?)
//           ?.map((e) => ActivityBreakdown.fromJson(e))
//           .toList(),
//       recentWork: (json['recentWork'] as List?)
//           ?.map((e) => RecentWork.fromJson(e))
//           .toList(),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'summary': summary?.toJson(),
//         'subjectProgress':
//             subjectProgress?.map((e) => e.toJson()).toList(),
//         'courseWiseOverview':
//             courseWiseOverview?.map((e) => e.toJson()).toList(),
//         'weeklyActivity': weeklyActivity?.toJson(),
//         'activityBreakdown':
//             activityBreakdown?.map((e) => e.toJson()).toList(),
//         'recentWork': recentWork?.map((e) => e.toJson()).toList(),
//       };
// }

// class Summary {
//   final int? activityCount;
//   final num? totalHours;
//   final num? avgDailyHours;
//   final num? avgQuizScore;

//   Summary({
//     this.activityCount,
//     this.totalHours,
//     this.avgDailyHours,
//     this.avgQuizScore,
//   });

//   factory Summary.fromJson(Map<String, dynamic> json) {
//     return Summary(
//       activityCount: json['activityCount'],
//       totalHours: json['totalHours'],
//       avgDailyHours: json['avgDailyHours'],
//       avgQuizScore: json['avgQuizScore'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'activityCount': activityCount,
//         'totalHours': totalHours,
//         'avgDailyHours': avgDailyHours,
//         'avgQuizScore': avgQuizScore,
//       };
// }

// class SubjectProgress {
//   final String? subject;
//   final num? completionRate;

//   SubjectProgress({
//     this.subject,
//     this.completionRate,
//   });

//   factory SubjectProgress.fromJson(Map<String, dynamic> json) {
//     return SubjectProgress(
//       subject: json['subject'],
//       completionRate: json['completionRate'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'subject': subject,
//         'completionRate': completionRate,
//       };
// }

// class CourseWiseOverview {
//   final String? courseId;
//   final String? subject;
//   final num? avgDailyHours;
//   final num? avgQuizScore;
//   final num? completionRate;
//   final num? activityCount;
//   final num? totalHours;

//   CourseWiseOverview({
//     this.courseId,
//     this.subject,
//     this.avgDailyHours,
//     this.avgQuizScore,
//     this.completionRate,
//     this.activityCount,
//     this.totalHours,
//   });

//   factory CourseWiseOverview.fromJson(Map<String, dynamic> json) {
//     return CourseWiseOverview(
//       courseId: json['courseId'],
//       subject: json['subject'],
//       avgDailyHours: json['avgDailyHours'],
//       avgQuizScore: json['avgQuizScore'],
//       completionRate: json['completionRate'],
//       activityCount: json['activityCount'],
//       totalHours: json['totalHours'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'courseId': courseId,
//         'subject': subject,
//         'avgDailyHours': avgDailyHours,
//         'avgQuizScore': avgQuizScore,
//         'completionRate': completionRate,
//         'activityCount': activityCount,
//         'totalHours': totalHours,
//       };
// }

// class WeeklyActivity {
//   final List<WeeklyDay>? days;
//   final WeeklyTotals? totals;

//   WeeklyActivity({
//     this.days,
//     this.totals,
//   });

//   factory WeeklyActivity.fromJson(Map<String, dynamic> json) {
//     return WeeklyActivity(
//       days: (json['days'] as List?)
//           ?.map((e) => WeeklyDay.fromJson(e))
//           .toList(),
//       totals:
//           json['totals'] != null ? WeeklyTotals.fromJson(json['totals']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'days': days?.map((e) => e.toJson()).toList(),
//         'totals': totals?.toJson(),
//       };
// }

// class WeeklyDay {
//   final String? label;
//   final String? date;
//   final num? avgDailyHours;
//   final num? avgQuizScore;
//   final num? totalHours;
//   final int? activityCount;

//   WeeklyDay({
//     this.label,
//     this.date,
//     this.avgDailyHours,
//     this.avgQuizScore,
//     this.totalHours,
//     this.activityCount,
//   });

//   factory WeeklyDay.fromJson(Map<String, dynamic> json) {
//     return WeeklyDay(
//       label: json['label'],
//       date: json['date'],
//       avgDailyHours: json['avgDailyHours'],
//       avgQuizScore: json['avgQuizScore'],
//       totalHours: json['totalHours'],
//       activityCount: json['activityCount'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'label': label,
//         'date': date,
//         'avgDailyHours': avgDailyHours,
//         'avgQuizScore': avgQuizScore,
//         'totalHours': totalHours,
//         'activityCount': activityCount,
//       };
// }

// class WeeklyTotals {
//   final num? avgQuizScore;
//   final num? avgDailyHours;
//   final num? totalHours;
//   final int? activityCount;

//   WeeklyTotals({
//     this.avgQuizScore,
//     this.avgDailyHours,
//     this.totalHours,
//     this.activityCount,
//   });

//   factory WeeklyTotals.fromJson(Map<String, dynamic> json) {
//     return WeeklyTotals(
//       avgQuizScore: json['avgQuizScore'],
//       avgDailyHours: json['avgDailyHours'],
//       totalHours: json['totalHours'],
//       activityCount: json['activityCount'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'avgQuizScore': avgQuizScore,
//         'avgDailyHours': avgDailyHours,
//         'totalHours': totalHours,
//         'activityCount': activityCount,
//       };
// }

// class ActivityBreakdown {
//   final int? total;
//   final int? completed;
//   final String? activityType;

//   ActivityBreakdown({
//     this.total,
//     this.completed,
//     this.activityType,
//   });

//   factory ActivityBreakdown.fromJson(Map<String, dynamic> json) {
//     return ActivityBreakdown(
//       total: json['total'],
//       completed: json['completed'],
//       activityType: json['activityType'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'total': total,
//         'completed': completed,
//         'activityType': activityType,
//       };
// }

// class RecentWork {
//   final String? subject;
//   final String? date;
//   final num? practiceScore;
//   final num? quizScore;
//   final Lesson? lesson;

//   RecentWork({
//     this.subject,
//     this.date,
//     this.practiceScore,
//     this.quizScore,
//     this.lesson,
//   });

//   factory RecentWork.fromJson(Map<String, dynamic> json) {
//     return RecentWork(
//       subject: json['subject'],
//       date: json['date'],
//       practiceScore: json['practiceScore'],
//       quizScore: json['quizScore'],
//       lesson: json['lesson'] != null
//           ? Lesson.fromJson(json['lesson'])
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'subject': subject,
//         'date': date,
//         'practiceScore': practiceScore,
//         'quizScore': quizScore,
//         'lesson': lesson?.toJson(),
//       };
// }

// class Lesson {
//   final String? strand;
//   final String? subStrand;
//   final int? lessonNumber;
//   final String? title;

//   Lesson({
//     this.strand,
//     this.subStrand,
//     this.lessonNumber,
//     this.title,
//   });

//   factory Lesson.fromJson(Map<String, dynamic> json) {
//     return Lesson(
//       strand: json['strand'],
//       subStrand: json['subStrand'],
//       lessonNumber: json['lessonNumber'],
//       title: json['title'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'strand': strand,
//         'subStrand': subStrand,
//         'lessonNumber': lessonNumber,
//         'title': title,
//       };
// }
class GetStudentDetailsResponseModel {
  final Student student;
  final Filters filters;
  final Overview overview;

  GetStudentDetailsResponseModel({
    required this.student,
    required this.filters,
    required this.overview,
  });

  factory GetStudentDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return GetStudentDetailsResponseModel(
      student: Student.fromJson(json['student']),
      filters: Filters.fromJson(json['filters']),
      overview: Overview.fromJson(json['overview']),
    );
  }
}

class Student {
  final String id;
  final String studentName;
  final String userId;
  final String schoolName;
  final String schoolCode;
  final String gradeLevel;
  final String status;
  final String? lastLoginAt;
  final Picture picture;

  Student({
    required this.id,
    required this.studentName,
    required this.userId,
    required this.schoolName,
    required this.schoolCode,
    required this.gradeLevel,
    required this.status,
    required this.lastLoginAt,
    required this.picture,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'] ?? '',
      studentName: json['studentName'] ?? '',
      userId: json['userId'] ?? '',
      schoolName: json['schoolName'] ?? '',
      schoolCode: json['schoolCode'] ?? '',
      gradeLevel: json['gradeLevel'] ?? '',
      status: json['status'] ?? '',
      lastLoginAt: json['lastLoginAt'],
      picture: Picture.fromJson(json['picture'] ?? {}),
    );
  }
}

class Picture {
  final String publicId;
  final String url;

  Picture({
    required this.publicId,
    required this.url,
  });

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      publicId: json['public_id'] ?? '',
      url: json['url'] ?? '',
    );
  }
}

class Filters {
  final String gradeLevel;
  final String timePeriod;
  final String subject;
  final List<String> gradeLevels;
  final List<String> timePeriods;
  final List<String> subjects;

  Filters({
    required this.gradeLevel,
    required this.timePeriod,
    required this.subject,
    required this.gradeLevels,
    required this.timePeriods,
    required this.subjects,
  });

  factory Filters.fromJson(Map<String, dynamic> json) {
    return Filters(
      gradeLevel: json['gradeLevel'] ?? '',
      timePeriod: json['timePeriod'] ?? '',
      subject: json['subject'] ?? '',
      gradeLevels: List<String>.from(json['gradeLevels'] ?? []),
      timePeriods: List<String>.from(json['timePeriods'] ?? []),
      subjects: List<String>.from(json['subjects'] ?? []),
    );
  }
}

class Overview {
  final Summary summary;
  final List<SubjectProgress> subjectProgress;
  final List<CourseWiseOverview> courseWiseOverview;
  final MonthlyActivity monthlyActivity;
  final List<ActivityBreakdown> activityBreakdown;
  final List<RecentWork> recentWork;

  Overview({
    required this.summary,
    required this.subjectProgress,
    required this.courseWiseOverview,
    required this.monthlyActivity,
    required this.activityBreakdown,
    required this.recentWork,
  });

  factory Overview.fromJson(Map<String, dynamic> json) {
    return Overview(
      summary: Summary.fromJson(json['summary'] ?? {}),
      subjectProgress: (json['subjectProgress'] as List? ?? [])
          .map((e) => SubjectProgress.fromJson(e))
          .toList(),
      courseWiseOverview: (json['courseWiseOverview'] as List? ?? [])
          .map((e) => CourseWiseOverview.fromJson(e))
          .toList(),
      monthlyActivity:
          MonthlyActivity.fromJson(json['monthlyActivity'] ?? {}),
      activityBreakdown: (json['activityBreakdown'] as List? ?? [])
          .map((e) => ActivityBreakdown.fromJson(e))
          .toList(),
      recentWork: (json['recentWork'] as List? ?? [])
          .map((e) => RecentWork.fromJson(e))
          .toList(),
    );
  }
}

class Summary {
  final int activityCount;
  final double totalHours;
  final double avgDailyHours;
  final double avgQuizScore;

  Summary({
    required this.activityCount,
    required this.totalHours,
    required this.avgDailyHours,
    required this.avgQuizScore,
  });

  factory Summary.fromJson(Map<String, dynamic> json) {
    return Summary(
      activityCount: json['activityCount'] ?? 0,
      totalHours: (json['totalHours'] ?? 0).toDouble(),
      avgDailyHours: (json['avgDailyHours'] ?? 0).toDouble(),
      avgQuizScore: (json['avgQuizScore'] ?? 0).toDouble(),
    );
  }
}

class SubjectProgress {
  final String subject;
  final double completionRate;

  SubjectProgress({
    required this.subject,
    required this.completionRate,
  });

  factory SubjectProgress.fromJson(Map<String, dynamic> json) {
    return SubjectProgress(
      subject: json['subject'] ?? '',
      completionRate: (json['completionRate'] ?? 0).toDouble(),
    );
  }
}

class CourseWiseOverview {
  final String courseId;
  final String subject;
  final double avgDailyHours;
  final double avgQuizScore;
  final double completionRate;

  CourseWiseOverview({
    required this.courseId,
    required this.subject,
    required this.avgDailyHours,
    required this.avgQuizScore,
    required this.completionRate,
  });

  factory CourseWiseOverview.fromJson(Map<String, dynamic> json) {
    return CourseWiseOverview(
      courseId: json['courseId'] ?? '',
      subject: json['subject'] ?? '',
      avgDailyHours: (json['avgDailyHours'] ?? 0).toDouble(),
      avgQuizScore: (json['avgQuizScore'] ?? 0).toDouble(),
      completionRate: (json['completionRate'] ?? 0).toDouble(),
    );
  }
}

class MonthlyActivity {
  final List<MonthData> months;
  final MonthlyTotals totals;

  MonthlyActivity({
    required this.months,
    required this.totals,
  });

  factory MonthlyActivity.fromJson(Map<String, dynamic> json) {
    return MonthlyActivity(
      months: (json['months'] as List? ?? [])
          .map((e) => MonthData.fromJson(e))
          .toList(),
      totals: MonthlyTotals.fromJson(json['totals'] ?? {}),
    );
  }
}

class MonthData {
  final String label;
  final String key;
  final double avgDailyHours;
  final double avgQuizScore;

  MonthData({
    required this.label,
    required this.key,
    required this.avgDailyHours,
    required this.avgQuizScore,
  });

  factory MonthData.fromJson(Map<String, dynamic> json) {
    return MonthData(
      label: json['label'] ?? '',
      key: json['key'] ?? '',
      avgDailyHours: (json['avgDailyHours'] ?? 0).toDouble(),
      avgQuizScore: (json['avgQuizScore'] ?? 0).toDouble(),
    );
  }
}

class MonthlyTotals {
  final double avgDailyHours;
  final double avgQuizScore;

  MonthlyTotals({
    required this.avgDailyHours,
    required this.avgQuizScore,
  });

  factory MonthlyTotals.fromJson(Map<String, dynamic> json) {
    return MonthlyTotals(
      avgDailyHours: (json['avgDailyHours'] ?? 0).toDouble(),
      avgQuizScore: (json['avgQuizScore'] ?? 0).toDouble(),
    );
  }
}

class ActivityBreakdown {
  final int total;
  final int completed;
  final String activityType;

  ActivityBreakdown({
    required this.total,
    required this.completed,
    required this.activityType,
  });

  factory ActivityBreakdown.fromJson(Map<String, dynamic> json) {
    return ActivityBreakdown(
      total: json['total'] ?? 0,
      completed: json['completed'] ?? 0,
      activityType: json['activityType'] ?? '',
    );
  }
}

class RecentWork {
  final String subject;
  final String date;
  final String activityType;
  final int? score;
  final int? practiceScore;
  final int? quizScore;
  final Lesson lesson;

  RecentWork({
    required this.subject,
    required this.date,
    required this.activityType,
    this.score,
    this.practiceScore,
    this.quizScore,
    required this.lesson,
  });

  factory RecentWork.fromJson(Map<String, dynamic> json) {
    return RecentWork(
      subject: json['subject'] ?? '',
      date: json['date'] ?? '',
      activityType: json['activityType'] ?? '',
      score: json['score'],
      practiceScore: json['practiceScore'],
      quizScore: json['quizScore'],
      lesson: Lesson.fromJson(json['lesson'] ?? {}),
    );
  }
}

class Lesson {
  final String strand;
  final String subStrand;
  final int lessonNumber;
  final String title;

  Lesson({
    required this.strand,
    required this.subStrand,
    required this.lessonNumber,
    required this.title,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      strand: json['strand'] ?? '',
      subStrand: json['subStrand'] ?? '',
      lessonNumber: json['lessonNumber'] ?? 0,
      title: json['title'] ?? '',
    );
  }
}

// class GetStudentDetailsResponseModel {
//   final bool? success;
//   final String? message;
//   final StudentDetailsData? data;

//   GetStudentDetailsResponseModel({this.success, this.message, this.data});

//   factory GetStudentDetailsResponseModel.fromJson(Map<String, dynamic> json) {
//     return GetStudentDetailsResponseModel(
//       success: json['success'],
//       message: json['message'],
//       data: json['data'] != null
//           ? StudentDetailsData.fromJson(json['data'])
//           : StudentDetailsData.fromJson(json),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'success': success, 'message': message, 'data': data?.toJson()};
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
//               (key, value) => MapEntry(
//                 key,
//                 StudentRecentWork.fromJson(value as Map<String, dynamic>),
//               ),
//             )
//           : null,
//       subjectWise: json['subjectWise'] != null
//           ? (json['subjectWise'] as Map<String, dynamic>).map(
//               (key, value) => MapEntry(
//                 key,
//                 SubjectWisePercentage.fromJson(value as Map<String, dynamic>),
//               ),
//             )
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'student': student?.toJson(),
//       'progressSheet': progressSheet?.toJson(),
//       'recentWork': recentWork?.map(
//         (key, value) => MapEntry(key, value.toJson()),
//       ),
//       'subjectWise': subjectWise?.map(
//         (key, value) => MapEntry(key, value.toJson()),
//       ),
//     };
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

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'studentName': studentName,
//       'userId': userId,
//       'schoolName': schoolName,
//       'schoolCode': schoolCode,
//       'gradeLevel': gradeLevel,
//       'status': status,
//       'picture': picture?.toJson(),
//     };
//   }
// }

// class Picture {
//   final String? publicId;
//   final String? url;

//   Picture({this.publicId, this.url});

//   factory Picture.fromJson(Map<String, dynamic> json) {
//     return Picture(publicId: json['public_id'], url: json['url']);
//   }

//   Map<String, dynamic> toJson() {
//     return {'public_id': publicId, 'url': url};
//   }
// }

// class ProgressSheet {
//   final List<CourseWiseOverview>? courseWiseOverview;
//   final ActivityMarks? marks;

//   ProgressSheet({this.courseWiseOverview, this.marks});

//   factory ProgressSheet.fromJson(Map<String, dynamic> json) {
//     return ProgressSheet(
//       courseWiseOverview: (json['courseWiseOverview'] as List?)
//           ?.map((e) => CourseWiseOverview.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       marks: json['marks'] != null
//           ? ActivityMarks.fromJson(json['marks'])
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'courseWiseOverview': courseWiseOverview?.map((e) => e.toJson()).toList(),
//       'marks': marks?.toJson(),
//     };
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
//   final ActivityMarks? marks;

//   CourseWiseOverview({
//     this.courseId,
//     this.subject,
//     this.activityCount,
//     this.totalHours,
//     this.avgDailyHours,
//     this.avgQuizScore,
//     this.completionRate,
//     this.marks,
//   });

//   factory CourseWiseOverview.fromJson(Map<String, dynamic> json) {
//     return CourseWiseOverview(
//       courseId: json['courseId'],
//       subject: json['subject'],
//       activityCount: json['activityCount'],
//       totalHours: json['totalHours'],
//       avgDailyHours: json['avgDailyHours'],
//       avgQuizScore: json['avgQuizScore'],
//       completionRate: json['completionRate'],
//       marks: json['marks'] != null ? ActivityMarks.fromJson(json['marks']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'courseId': courseId,
//       'subject': subject,
//       'activityCount': activityCount,
//       'totalHours': totalHours,
//       'avgDailyHours': avgDailyHours,
//       'avgQuizScore': avgQuizScore,
//       'completionRate': completionRate,
//       'marks': marks?.toJson(),
//     };
//   }
// }

// class ActivityMarks {
//   final List<DayActivity>? days;
//   final ActivityTotals? totals;

//   ActivityMarks({this.days, this.totals});

//   factory ActivityMarks.fromJson(Map<String, dynamic> json) {
//     return ActivityMarks(
//       days: (json['days'] as List?)
//           ?.map((e) => DayActivity.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       totals: json['totals'] != null
//           ? ActivityTotals.fromJson(json['totals'])
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'days': days?.map((e) => e.toJson()).toList(),
//       'totals': totals?.toJson(),
//     };
//   }
// }

// class DayActivity {
//   final String? label;
//   final String? subject;
//   final String? date;
//   final int? activityCount;
//   final num? totalHours;
//   final num? avgQuizScore;

//   DayActivity({
//     this.label,
//     this.subject,
//     this.date,
//     this.activityCount,
//     this.totalHours,
//     this.avgQuizScore,
//   });

//   factory DayActivity.fromJson(Map<String, dynamic> json) {
//     return DayActivity(
//       label: json['label'],
//       subject: json['subject'],
//       date: json['date'],
//       activityCount: json['activityCount'],
//       totalHours: json['totalHours'],
//       avgQuizScore: json['avgQuizScore'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'label': label,
//       'subject': subject,
//       'date': date,
//       'activityCount': activityCount,
//       'totalHours': totalHours,
//       'avgQuizScore': avgQuizScore,
//     };
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

//   Map<String, dynamic> toJson() {
//     return {
//       'activityCount': activityCount,
//       'totalHours': totalHours,
//       'avgQuizScore': avgQuizScore,
//       'avgDailyHours': avgDailyHours,
//     };
//   }
// }

// class StudentRecentWork {
//   final num? practice;
//   final num? quiz;
//   final num? practiceOriginalScore;
//   final num? quizOriginalScore;
//   final num? lowestQuizScore;
//   final String? practiceDate;
//   final String? quizDate;

//   StudentRecentWork({
//     this.practice,
//     this.quiz,
//     this.practiceOriginalScore,
//     this.quizOriginalScore,
//     this.lowestQuizScore,
//     this.practiceDate,
//     this.quizDate,
//   });

//   factory StudentRecentWork.fromJson(Map<String, dynamic> json) {
//     return StudentRecentWork(
//       practice: json['practice'],
//       quiz: json['quiz'],
//       practiceOriginalScore: json['practice original Score'],
//       quizOriginalScore: json['quiz original score'],
//       lowestQuizScore: json['lowest quiz score'],
//       practiceDate: json['practiceDate'],
//       quizDate: json['quizDate'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'practice': practice,
//       'quiz': quiz,
//       'practice original Score': practiceOriginalScore,
//       'quiz original score': quizOriginalScore,
//       'lowest quiz score': lowestQuizScore,
//       'practiceDate': practiceDate,
//       'quizDate': quizDate,
//     };
//   }
// }

// class SubjectWisePercentage {
//   final num? percentage;
//   final String? date;

//   SubjectWisePercentage({this.percentage, this.date});

//   factory SubjectWisePercentage.fromJson(Map<String, dynamic> json) {
//     return SubjectWisePercentage(
//       percentage: json['percentage'],
//       date: json['date'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'percentage': percentage, 'date': date};
//   }
// }
