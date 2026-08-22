class TeacherDashboardResponse {
  final Teacher teacher;
  final Filters filters;
  final Counters counters;
  final Charts charts;

  TeacherDashboardResponse({
    required this.teacher,
    required this.filters,
    required this.counters,
    required this.charts,
  });

  factory TeacherDashboardResponse.fromJson(Map<String, dynamic> json) {
    return TeacherDashboardResponse(
      teacher: Teacher.fromJson(json['teacher']),
      filters: Filters.fromJson(json['filters']),
      counters: Counters.fromJson(json['counters']),
      charts: Charts.fromJson(json['charts']),
    );
  }

  Map<String, dynamic> toJson() => {
        'teacher': teacher.toJson(),
        'filters': filters.toJson(),
        'counters': counters.toJson(),
        'charts': charts.toJson(),
      };
}

class Teacher {
  final String id;
  final String name;
  final School school;
  final String gradeLevel;

  Teacher({
    required this.id,
    required this.name,
    required this.school,
    required this.gradeLevel,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      school: School.fromJson(json['school']),
      gradeLevel: json['gradeLevel'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'school': school.toJson(),
        'gradeLevel': gradeLevel,
      };
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

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'schoolCode': schoolCode,
      };
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

  Map<String, dynamic> toJson() => {
        'gradeLevel': gradeLevel,
        'timePeriod': timePeriod,
        'subject': subject,
        'gradeLevels': gradeLevels,
        'timePeriods': timePeriods,
        'subjects': subjects,
      };
}

class Counters {
  final int totalStudents;
  final int activeStudents;
  final int inactiveStudents;
  final int totalSubjects;
  final int lessonCompleted;
  final int quizCompleted;

  Counters({
    required this.totalStudents,
    required this.activeStudents,
    required this.inactiveStudents,
    required this.totalSubjects,
    required this.lessonCompleted,
    required this.quizCompleted,
  });

  factory Counters.fromJson(Map<String, dynamic> json) {
    return Counters(
      totalStudents: json['totalStudents'] ?? 0,
      activeStudents: json['activeStudents'] ?? 0,
      inactiveStudents: json['inactiveStudents'] ?? 0,
      totalSubjects: json['totalSubjects'] ?? 0,
      lessonCompleted: json['lessonCompleted'] ?? 0,
      quizCompleted: json['quizCompleted'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        'totalStudents': totalStudents,
        'activeStudents': activeStudents,
        'inactiveStudents': inactiveStudents,
        'totalSubjects': totalSubjects,
        'lessonCompleted': lessonCompleted,
        'quizCompleted': quizCompleted,
      };
}

class Charts {
  final List<SubjectOverview> subjectOverview;
  final List<SubjectMetric> subjectMetrics;
  final List<WeeklyStudent> weeklyStudents;

  Charts({
    required this.subjectOverview,
    required this.subjectMetrics,
    required this.weeklyStudents,
  });

  factory Charts.fromJson(Map<String, dynamic> json) {
    return Charts(
      subjectOverview: (json['subjectOverview'] as List<dynamic>? ?? [])
          .map((e) => SubjectOverview.fromJson(e))
          .toList(),
      subjectMetrics: (json['subjectMetrics'] as List<dynamic>? ?? [])
          .map((e) => SubjectMetric.fromJson(e))
          .toList(),
      weeklyStudents: (json['weeklyStudents'] as List<dynamic>? ?? [])
          .map((e) => WeeklyStudent.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'subjectOverview': subjectOverview.map((e) => e.toJson()).toList(),
        'subjectMetrics': subjectMetrics.map((e) => e.toJson()).toList(),
        'weeklyStudents': weeklyStudents.map((e) => e.toJson()).toList(),
      };
}

class SubjectOverview {
  final String label;
  final String key;
  final double total;
  final double avgQuizScore;

  SubjectOverview({
    required this.label,
    required this.key,
    required this.total,
    required this.avgQuizScore,
  });

  factory SubjectOverview.fromJson(Map<String, dynamic> json) {
    return SubjectOverview(
      label: json['label'] ?? '',
      key: json['key'] ?? '',
      total: (json['total'] ?? 0).toDouble(),
      avgQuizScore: (json['avgQuizScore'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'label': label,
        'key': key,
        'total': total,
        'avgQuizScore': avgQuizScore,
      };
}

class SubjectMetric {
  final String subject;
  final double avgDailyHours;
  final double avgQuizScore;

  SubjectMetric({
    required this.subject,
    required this.avgDailyHours,
    required this.avgQuizScore,
  });

  factory SubjectMetric.fromJson(Map<String, dynamic> json) {
    return SubjectMetric(
      subject: json['subject'] ?? '',
      avgDailyHours: (json['avgDailyHours'] ?? 0).toDouble(),
      avgQuizScore: (json['avgQuizScore'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'subject': subject,
        'avgDailyHours': avgDailyHours,
        'avgQuizScore': avgQuizScore,
      };
}

class WeeklyStudent {
  final String label;
  final String date;
  final double total;

  WeeklyStudent({
    required this.label,
    required this.date,
    required this.total,
  });

  factory WeeklyStudent.fromJson(Map<String, dynamic> json) {
    return WeeklyStudent(
      label: json['label'] ?? '',
      date: json['date'] ?? '',
      total: (json['total'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'label': label,
        'date': date,
        'total': total,
      };
}

// class TeacherDashboardResponse {
//   final Teacher? teacher;
//   final Filters? filters;
//   final Counters? counters;
//   final Charts? charts;

//   TeacherDashboardResponse({
//     this.teacher,
//     this.filters,
//     this.counters,
//     this.charts,
//   });

//   factory TeacherDashboardResponse.fromJson(Map<String, dynamic> json) {
//     return TeacherDashboardResponse(
//       teacher:
//           json['teacher'] != null ? Teacher.fromJson(json['teacher']) : null,
//       filters:
//           json['filters'] != null ? Filters.fromJson(json['filters']) : null,
//       counters:
//           json['counters'] != null ? Counters.fromJson(json['counters']) : null,
//       charts: json['charts'] != null ? Charts.fromJson(json['charts']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'teacher': teacher?.toJson(),
//       'filters': filters?.toJson(),
//       'counters': counters?.toJson(),
//       'charts': charts?.toJson(),
//     };
//   }
// }

// class Teacher {
//   final String? id;
//   final String? name;
//   final School? school;
//   final String? gradeLevel;

//   Teacher({
//     this.id,
//     this.name,
//     this.school,
//     this.gradeLevel,
//   });

//   factory Teacher.fromJson(Map<String, dynamic> json) {
//     return Teacher(
//       id: json['_id'],
//       name: json['name'],
//       school:
//           json['school'] != null ? School.fromJson(json['school']) : null,
//       gradeLevel: json['gradeLevel'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'name': name,
//       'school': school?.toJson(),
//       'gradeLevel': gradeLevel,
//     };
//   }
// }

// class School {
//   final String? id;
//   final String? name;
//   final String? schoolCode;

//   School({
//     this.id,
//     this.name,
//     this.schoolCode,
//   });

//   factory School.fromJson(Map<String, dynamic> json) {
//     return School(
//       id: json['_id'],
//       name: json['name'],
//       schoolCode: json['schoolCode'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'name': name,
//       'schoolCode': schoolCode,
//     };
//   }
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

//   Map<String, dynamic> toJson() {
//     return {
//       'gradeLevel': gradeLevel,
//       'timePeriod': timePeriod,
//       'subject': subject,
//       'gradeLevels': gradeLevels,
//       'timePeriods': timePeriods,
//       'subjects': subjects,
//     };
//   }
// }

// class Counters {
//   final int? totalStudents;
//   final int? activeStudents;
//   final int? inactiveStudents;
//   final int? totalSubjects;
//   final int? lessonCompleted;
//   final int? quizCompleted;

//   Counters({
//     this.totalStudents,
//     this.activeStudents,
//     this.inactiveStudents,
//     this.totalSubjects,
//     this.lessonCompleted,
//     this.quizCompleted,
//   });

//   factory Counters.fromJson(Map<String, dynamic> json) {
//     return Counters(
//       totalStudents: json['totalStudents'],
//       activeStudents: json['activeStudents'],
//       inactiveStudents: json['inactiveStudents'],
//       totalSubjects: json['totalSubjects'],
//       lessonCompleted: json['lessonCompleted'],
//       quizCompleted: json['quizCompleted'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'totalStudents': totalStudents,
//       'activeStudents': activeStudents,
//       'inactiveStudents': inactiveStudents,
//       'totalSubjects': totalSubjects,
//       'lessonCompleted': lessonCompleted,
//       'quizCompleted': quizCompleted,
//     };
//   }
// }

// class Charts {
//   final List<SubjectOverview>? subjectOverview;
//   final List<SubjectMetric>? subjectMetrics;
//   final List<WeeklyStudent>? weeklyStudents;

//   Charts({
//     this.subjectOverview,
//     this.subjectMetrics,
//     this.weeklyStudents,
//   });

//   factory Charts.fromJson(Map<String, dynamic> json) {
//     return Charts(
//       subjectOverview: (json['subjectOverview'] as List?)
//           ?.map((e) => SubjectOverview.fromJson(e))
//           .toList(),
//       subjectMetrics: (json['subjectMetrics'] as List?)
//           ?.map((e) => SubjectMetric.fromJson(e))
//           .toList(),
//       weeklyStudents: (json['weeklyStudents'] as List?)
//           ?.map((e) => WeeklyStudent.fromJson(e))
//           .toList(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'subjectOverview':
//           subjectOverview?.map((e) => e.toJson()).toList(),
//       'subjectMetrics':
//           subjectMetrics?.map((e) => e.toJson()).toList(),
//       'weeklyStudents':
//           weeklyStudents?.map((e) => e.toJson()).toList(),
//     };
//   }
// }

// class SubjectOverview {
//   final String? label;
//   final String? key;
//   final int? total;
//   final double? avgQuizScore;

//   SubjectOverview({
//     this.label,
//     this.key,
//     this.total,
//     this.avgQuizScore,
//   });

//   factory SubjectOverview.fromJson(Map<String, dynamic> json) {
//     return SubjectOverview(
//       label: json['label'],
//       key: json['key'],
//       total: json['total'],
//       avgQuizScore: (json['avgQuizScore'] as num?)?.toDouble(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'label': label,
//       'key': key,
//       'total': total,
//       'avgQuizScore': avgQuizScore,
//     };
//   }
// }

// class SubjectMetric {
//   final String? subject;
//   final double? avgDailyHours;
//   final double? avgQuizScore;

//   SubjectMetric({
//     this.subject,
//     this.avgDailyHours,
//     this.avgQuizScore,
//   });

//   factory SubjectMetric.fromJson(Map<String, dynamic> json) {
//     return SubjectMetric(
//       subject: json['subject'],
//       avgDailyHours: (json['avgDailyHours'] as num?)?.toDouble(),
//       avgQuizScore: (json['avgQuizScore'] as num?)?.toDouble(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'subject': subject,
//       'avgDailyHours': avgDailyHours,
//       'avgQuizScore': avgQuizScore,
//     };
//   }
// }

// class WeeklyStudent {
//   final String? label;
//   final String? date;
//   final int? total;
//   final double? hours;

//   WeeklyStudent({
//     this.label,
//     this.date,
//     this.total,
//     this.hours,
//   });

//   factory WeeklyStudent.fromJson(Map<String, dynamic> json) {
//     return WeeklyStudent(
//       label: json['label'],
//       date: json['date'],
//       total: json['total'],
//       hours: (json['hours'] as num?)?.toDouble() ?? (json['avgHours'] as num?)?.toDouble() ?? (json['totalHours'] as num?)?.toDouble(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'label': label,
//       'date': date,
//       'total': total,
//     };
//   }
// }

// class TeacherDashboardResponse {
//   final Teacher? teacher;
//   final Counters? counters;
//   final Charts? charts;

//   TeacherDashboardResponse({this.teacher, this.counters, this.charts});

//   factory TeacherDashboardResponse.fromJson(Map<String, dynamic> json) {
//     return TeacherDashboardResponse(
//       teacher: json['teacher'] != null
//           ? Teacher.fromJson(_asMap(json['teacher']))
//           : null,
//       counters: json['counters'] != null
//           ? Counters.fromJson(_asMap(json['counters']))
//           : null,
//       charts: json['charts'] != null
//           ? Charts.fromJson(_asMap(json['charts']))
//           : null,
//     );
//   }
// }

// class Teacher {
//   final String? id;
//   final String? name;
//   final School? school;
//   final String? gradeLevel;

//   Teacher({this.id, this.name, this.school, this.gradeLevel});

//   factory Teacher.fromJson(Map<String, dynamic> json) {
//     return Teacher(
//       id: json['_id']?.toString(),
//       name: json['name']?.toString(),
//       school: json['school'] != null
//           ? School.fromJson(_asMap(json['school']))
//           : null,
//       gradeLevel: json['gradeLevel']?.toString(),
//     );
//   }
// }

// class School {
//   final String? id;
//   final String? name;
//   final String? schoolCode;

//   School({this.id, this.name, this.schoolCode});

//   factory School.fromJson(Map<String, dynamic> json) {
//     return School(
//       id: json['_id']?.toString(),
//       name: json['name']?.toString(),
//       schoolCode: json['schoolCode']?.toString(),
//     );
//   }
// }

// class Counters {
//   final int? totalStudents;
//   final int? totalStudentsGrowth;
//   final int? totalSubjects;
//   final int? totalSubjectsGrowth;
//   final int? lessonCompleted;
//   final int? lessonCompletedGrowth;
//   final int? quizCompleted;
//   final int? quizCompletedGrowth;

//   Counters({
//     this.totalStudents,
//     this.totalStudentsGrowth,
//     this.totalSubjects,
//     this.totalSubjectsGrowth,
//     this.lessonCompleted,
//     this.lessonCompletedGrowth,
//     this.quizCompleted,
//     this.quizCompletedGrowth,
//   });

//   factory Counters.fromJson(Map<String, dynamic> json) {
//     return Counters(
//       totalStudents: _asInt(json['totalStudents']),
//       totalStudentsGrowth: _asInt(json['totalStudentsGrowth']),
//       totalSubjects: _asInt(json['totalSubjects']),
//       totalSubjectsGrowth: _asInt(json['totalSubjectsGrowth']),
//       lessonCompleted: _asInt(json['lessonCompleted']),
//       lessonCompletedGrowth: _asInt(json['lessonCompletedGrowth']),
//       quizCompleted: _asInt(json['quizCompleted']),
//       quizCompletedGrowth: _asInt(json['quizCompletedGrowth']),
//     );
//   }
// }

// class Charts {
//   final List<SubjectOverview>? subjectOverview;
//   final List<WeeklyStudents>? weeklyStudents;
//   final List<MonthlyTrend>? monthlyCompletionTrend;
//   final Milestone? milestone;

//   Charts({
//     this.subjectOverview,
//     this.weeklyStudents,
//     this.monthlyCompletionTrend,
//     this.milestone,
//   });

//   factory Charts.fromJson(Map<String, dynamic> json) {
//     return Charts(
//       subjectOverview: (json['subjectOverview'] as List?)
//           ?.map((e) => SubjectOverview.fromJson(_asMap(e)))
//           .toList(),
//       weeklyStudents: (json['weeklyStudents'] as List?)
//           ?.map((e) => WeeklyStudents.fromJson(_asMap(e)))
//           .toList(),
//       monthlyCompletionTrend: (json['monthlyCompletionTrend'] as List?)
//           ?.map((e) => MonthlyTrend.fromJson(_asMap(e)))
//           .toList(),
//       milestone: json['milestone'] != null
//           ? Milestone.fromJson(_asMap(json['milestone']))
//           : null,
//     );
//   }
// }

// class SubjectOverview {
//   final int? total;
//   final int? completed;
//   final String? courseId;
//   final String? subject;
//   final int? completionRate;

//   SubjectOverview({
//     this.total,
//     this.completed,
//     this.courseId,
//     this.subject,
//     this.completionRate,
//   });

//   factory SubjectOverview.fromJson(Map<String, dynamic> json) {
//     return SubjectOverview(
//       total: _asInt(json['total']),
//       completed: _asInt(json['completed']),
//       courseId: json['courseId']?.toString(),
//       subject: json['subject']?.toString(),
//       completionRate: _asInt(json['completionRate']),
//     );
//   }
// }

// class WeeklyStudents {
//   final String? day;
//   final int? total;

//   WeeklyStudents({this.day, this.total});

//   factory WeeklyStudents.fromJson(Map<String, dynamic> json) {
//     return WeeklyStudents(
//       day: json['day']?.toString(),
//       total: _asInt(json['total']),
//     );
//   }
// }

// class MonthlyTrend {
//   final String? month;
//   final int? monthNumber;
//   final int? completed;
//   final String? courseId;
//   final String? subject;
//   final int? year;
//   final Map<String, dynamic>? subjects;

//   MonthlyTrend({
//     this.month,
//     this.monthNumber,
//     this.completed,
//     this.courseId,
//     this.subject,
//     this.year,
//     this.subjects,
//   });

//   factory MonthlyTrend.fromJson(Map<String, dynamic> json) {
//     final map = Map<String, dynamic>.from(json);
//     final rawMonth = map.remove('month');
//     final monthNumber = _asInt(rawMonth);
//     final subject = json['subject']?.toString();
//     final completed = _asInt(json['completed']);
//     final subjects = subject != null && completed != null
//         ? <String, dynamic>{subject: completed}
//         : map;

//     return MonthlyTrend(
//       month: _monthLabel(rawMonth),
//       monthNumber: monthNumber,
//       completed: completed,
//       courseId: json['courseId']?.toString(),
//       subject: subject,
//       year: _asInt(json['year']),
//       subjects: subjects,
//     );
//   }
// }

// class Milestone {
//   final String? date;
//   final String? strand;
//   final String? subStrand;
//   final String? lesson;
//   final Progress? progress;

//   Milestone({
//     this.date,
//     this.strand,
//     this.subStrand,
//     this.lesson,
//     this.progress,
//   });

//   factory Milestone.fromJson(Map<String, dynamic> json) {
//     return Milestone(
//       date: json['date']?.toString(),
//       strand: json['strand']?.toString(),
//       subStrand: json['subStrand']?.toString(),
//       lesson: json['lesson']?.toString(),
//       progress: json['progress'] != null
//           ? Progress.fromJson(_asMap(json['progress']))
//           : null,
//     );
//   }
// }

// class Progress {
//   final int? getReady;
//   final int? learn;
//   final int? practice;
//   final int? quiz;

//   Progress({this.getReady, this.learn, this.practice, this.quiz});

//   factory Progress.fromJson(Map<String, dynamic> json) {
//     return Progress(
//       getReady: _asInt(json['getReady']),
//       learn: _asInt(json['learn']),
//       practice: _asInt(json['practice']),
//       quiz: _asInt(json['quiz']),
//     );
//   }
// }

// int? _asInt(dynamic value) {
//   if (value == null) return null;
//   if (value is int) return value;
//   if (value is num) return value.toInt();
//   return int.tryParse(value.toString());
// }

// Map<String, dynamic> _asMap(dynamic value) {
//   if (value is Map<String, dynamic>) return value;
//   return Map<String, dynamic>.from(value as Map);
// }

// String? _monthLabel(dynamic value) {
//   const months = [
//     'Jan',
//     'Feb',
//     'Mar',
//     'Apr',
//     'May',
//     'Jun',
//     'Jul',
//     'Aug',
//     'Sep',
//     'Oct',
//     'Nov',
//     'Dec',
//   ];

//   final monthNumber = _asInt(value);
//   if (monthNumber != null && monthNumber >= 1 && monthNumber <= 12) {
//     return months[monthNumber - 1];
//   }

//   return value?.toString();
// }
