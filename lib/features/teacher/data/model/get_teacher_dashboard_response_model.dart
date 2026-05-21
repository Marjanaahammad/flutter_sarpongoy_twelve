// class TeacherDashboardResponse {
//   final Teacher teacher;
//   final Counters counters;
//   final Charts charts;

//   TeacherDashboardResponse({
//     required this.teacher,
//     required this.counters,
//     required this.charts,
//   });

//   factory TeacherDashboardResponse.fromJson(Map<String, dynamic> json) {
//     return TeacherDashboardResponse(
//       teacher: Teacher.fromJson(json['teacher'] ?? {}),
//       counters: Counters.fromJson(json['counters'] ?? {}),
//       charts: Charts.fromJson(json['charts'] ?? {}),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'teacher': teacher.toJson(),
//       'counters': counters.toJson(),
//       'charts': charts.toJson(),
//     };
//   }
// }

// class Teacher {
//   final String id;
//   final String name;
//   final School school;
//   final String gradeLevel;

//   Teacher({
//     required this.id,
//     required this.name,
//     required this.school,
//     required this.gradeLevel,
//   });

//   factory Teacher.fromJson(Map<String, dynamic> json) {
//     return Teacher(
//       id: json['_id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       school: School.fromJson(json['school'] ?? {}),
//       gradeLevel: json['gradeLevel']?.toString() ?? '',
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'name': name,
//       'school': school.toJson(),
//       'gradeLevel': gradeLevel,
//     };
//   }
// }

// class School {
//   final String id;
//   final String name;
//   final String schoolCode;

//   School({
//     required this.id,
//     required this.name,
//     required this.schoolCode,
//   });

//   factory School.fromJson(Map<String, dynamic> json) {
//     return School(
//       id: json['_id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       schoolCode: json['schoolCode']?.toString() ?? '',
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

// class Counters {
//   final int totalStudents;
//   final int totalSubjects;
//   final int lessonCompleted;
//   final int quizCompleted;

//   Counters({
//     required this.totalStudents,
//     required this.totalSubjects,
//     required this.lessonCompleted,
//     required this.quizCompleted,
//   });

//   factory Counters.fromJson(Map<String, dynamic> json) {
//     return Counters(
//       totalStudents: json['totalStudents'] ?? 0,
//       totalSubjects: json['totalSubjects'] ?? 0,
//       lessonCompleted: json['lessonCompleted'] ?? 0,
//       quizCompleted: json['quizCompleted'] ?? 0,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'totalStudents': totalStudents,
//       'totalSubjects': totalSubjects,
//       'lessonCompleted': lessonCompleted,
//       'quizCompleted': quizCompleted,
//     };
//   }
// }

// class Charts {
//   final List<SubjectOverview> subjectOverview;
//   final List<WeeklyStudent> weeklyStudents;
//   final List<MonthlyCompletionTrend> monthlyCompletionTrend;

//   Charts({
//     required this.subjectOverview,
//     required this.weeklyStudents,
//     required this.monthlyCompletionTrend,
//   });

//   factory Charts.fromJson(Map<String, dynamic> json) {
//     return Charts(
//       subjectOverview: (json['subjectOverview'] as List? ?? [])
//           .map((e) => SubjectOverview.fromJson(e))
//           .toList(),
//       weeklyStudents: (json['weeklyStudents'] as List? ?? [])
//           .map((e) => WeeklyStudent.fromJson(e))
//           .toList(),
//       monthlyCompletionTrend: (json['monthlyCompletionTrend'] as List? ?? [])
//           .map((e) => MonthlyCompletionTrend.fromJson(e))
//           .toList(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'subjectOverview': subjectOverview.map((e) => e.toJson()).toList(),
//       'weeklyStudents': weeklyStudents.map((e) => e.toJson()).toList(),
//       'monthlyCompletionTrend':
//           monthlyCompletionTrend.map((e) => e.toJson()).toList(),
//     };
//   }
// }

// class SubjectOverview {
//   final int completed;
//   final String subject;

//   SubjectOverview({
//     required this.completed,
//     required this.subject,
//   });

//   factory SubjectOverview.fromJson(Map<String, dynamic> json) {
//     return SubjectOverview(
//       completed: json['completed'] ?? 0,
//       subject: json['subject']?.toString() ?? '',
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'completed': completed,
//       'subject': subject,
//     };
//   }
// }

// class WeeklyStudent {
//   final String day;
//   final int total;

//   WeeklyStudent({
//     required this.day,
//     required this.total,
//   });

//   factory WeeklyStudent.fromJson(Map<String, dynamic> json) {
//     return WeeklyStudent(
//       day: json['day']?.toString() ?? '',
//       total: json['total'] ?? 0,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'day': day,
//       'total': total,
//     };
//   }
// }

// class MonthlyCompletionTrend {
//   final int completed;
//   final String courseId;
//   final String subject;
//   final int year;
//   final int month;

//   MonthlyCompletionTrend({
//     required this.completed,
//     required this.courseId,
//     required this.subject,
//     required this.year,
//     required this.month,
//   });

//   factory MonthlyCompletionTrend.fromJson(Map<String, dynamic> json) {
//     return MonthlyCompletionTrend(
//       completed: json['completed'] ?? 0,
//       courseId: json['courseId']?.toString() ?? '',
//       subject: json['subject']?.toString() ?? '',
//       year: json['year'] ?? 0,
//       month: json['month'] ?? 0,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'completed': completed,
//       'courseId': courseId,
//       'subject': subject,
//       'year': year,
//       'month': month,
//     };
//   }
// }
// class TeacherDashboardResponse {
//   final Teacher? teacher;
//   final Counters? counters;
//   final Charts? charts;

//   TeacherDashboardResponse({
//     this.teacher,
//     this.counters,
//     this.charts,
//   });

//   factory TeacherDashboardResponse.fromJson(Map<String, dynamic> json) {
//     return TeacherDashboardResponse(
//       teacher: json['teacher'] != null
//           ? Teacher.fromJson(json['teacher'])
//           : null,
//       counters: json['counters'] != null
//           ? Counters.fromJson(json['counters'])
//           : null,
//       charts: json['charts'] != null
//           ? Charts.fromJson(json['charts'])
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'teacher': teacher?.toJson(),
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
//       school: json['school'] != null
//           ? School.fromJson(json['school'])
//           : null,
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
//       totalStudents: json['totalStudents'],
//       totalStudentsGrowth: json['totalStudentsGrowth'],
//       totalSubjects: json['totalSubjects'],
//       totalSubjectsGrowth: json['totalSubjectsGrowth'],
//       lessonCompleted: json['lessonCompleted'],
//       lessonCompletedGrowth: json['lessonCompletedGrowth'],
//       quizCompleted: json['quizCompleted'],
//       quizCompletedGrowth: json['quizCompletedGrowth'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'totalStudents': totalStudents,
//       'totalStudentsGrowth': totalStudentsGrowth,
//       'totalSubjects': totalSubjects,
//       'totalSubjectsGrowth': totalSubjectsGrowth,
//       'lessonCompleted': lessonCompleted,
//       'lessonCompletedGrowth': lessonCompletedGrowth,
//       'quizCompleted': quizCompleted,
//       'quizCompletedGrowth': quizCompletedGrowth,
//     };
//   }
// }

// class Charts {
//   final List<SubjectOverview>? subjectOverview;
//   final List<WeeklyStudents>? weeklyStudents;
//   final List<MonthlyCompletionTrend>? monthlyCompletionTrend;
//   final Milestone? milestone;

//   Charts({
//     this.subjectOverview,
//     this.weeklyStudents,
//     this.monthlyCompletionTrend,
//     this.milestone,
//   });

//   factory Charts.fromJson(Map<String, dynamic> json) {
//     return Charts(
//       subjectOverview: json['subjectOverview'] != null
//           ? (json['subjectOverview'] as List)
//               .map((e) => SubjectOverview.fromJson(e))
//               .toList()
//           : [],
//       weeklyStudents: json['weeklyStudents'] != null
//           ? (json['weeklyStudents'] as List)
//               .map((e) => WeeklyStudents.fromJson(e))
//               .toList()
//           : [],
//       monthlyCompletionTrend: json['monthlyCompletionTrend'] != null
//           ? (json['monthlyCompletionTrend'] as List)
//               .map((e) => MonthlyCompletionTrend.fromJson(e))
//               .toList()
//           : [],
//       milestone: json['milestone'] != null
//           ? Milestone.fromJson(json['milestone'])
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'subjectOverview': subjectOverview?.map((e) => e.toJson()).toList(),
//       'weeklyStudents': weeklyStudents?.map((e) => e.toJson()).toList(),
//       'monthlyCompletionTrend':
//           monthlyCompletionTrend?.map((e) => e.toJson()).toList(),
//       'milestone': milestone?.toJson(),
//     };
//   }
// }

// class SubjectOverview {
//   final int? completed;
//   final String? subject;

//   SubjectOverview({
//     this.completed,
//     this.subject,
//   });

//   factory SubjectOverview.fromJson(Map<String, dynamic> json) {
//     return SubjectOverview(
//       completed: json['completed'],
//       subject: json['subject'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'completed': completed,
//       'subject': subject,
//     };
//   }
// }

// class WeeklyStudents {
//   final String? day;
//   final int? total;

//   WeeklyStudents({
//     this.day,
//     this.total,
//   });

//   factory WeeklyStudents.fromJson(Map<String, dynamic> json) {
//     return WeeklyStudents(
//       day: json['day'],
//       total: json['total'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'day': day,
//       'total': total,
//     };
//   }
// }

// class MonthlyCompletionTrend {
//   final String? month;
//   final int? completed;

//   MonthlyCompletionTrend({
//     this.month,
//     this.completed,
//   });

//   factory MonthlyCompletionTrend.fromJson(Map<String, dynamic> json) {
//     return MonthlyCompletionTrend(
//       month: json['month'],
//       completed: json['completed'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'month': month,
//       'completed': completed,
//     };
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
//       date: json['date'],
//       strand: json['strand'],
//       subStrand: json['subStrand'],
//       lesson: json['lesson'],
//       progress: json['progress'] != null
//           ? Progress.fromJson(json['progress'])
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'date': date,
//       'strand': strand,
//       'subStrand': subStrand,
//       'lesson': lesson,
//       'progress': progress?.toJson(),
//     };
//   }
// }

// class Progress {
//   final int? getReady;
//   final int? learn;
//   final int? practice;
//   final int? quiz;

//   Progress({
//     this.getReady,
//     this.learn,
//     this.practice,
//     this.quiz,
//   });

//   factory Progress.fromJson(Map<String, dynamic> json) {
//     return Progress(
//       getReady: json['getReady'],
//       learn: json['learn'],
//       practice: json['practice'],
//       quiz: json['quiz'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'getReady': getReady,
//       'learn': learn,
//       'practice': practice,
//       'quiz': quiz,
//     };
//   }
// }

class TeacherDashboardResponse {
  final Teacher? teacher;
  final Counters? counters;
  final Charts? charts;

  TeacherDashboardResponse({this.teacher, this.counters, this.charts});

  factory TeacherDashboardResponse.fromJson(Map<String, dynamic> json) {
    return TeacherDashboardResponse(
      teacher: json['teacher'] != null
          ? Teacher.fromJson(_asMap(json['teacher']))
          : null,
      counters: json['counters'] != null
          ? Counters.fromJson(_asMap(json['counters']))
          : null,
      charts: json['charts'] != null
          ? Charts.fromJson(_asMap(json['charts']))
          : null,
    );
  }
}

class Teacher {
  final String? id;
  final String? name;
  final School? school;
  final String? gradeLevel;

  Teacher({this.id, this.name, this.school, this.gradeLevel});

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      id: json['_id']?.toString(),
      name: json['name']?.toString(),
      school: json['school'] != null
          ? School.fromJson(_asMap(json['school']))
          : null,
      gradeLevel: json['gradeLevel']?.toString(),
    );
  }
}

class School {
  final String? id;
  final String? name;
  final String? schoolCode;

  School({this.id, this.name, this.schoolCode});

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      id: json['_id']?.toString(),
      name: json['name']?.toString(),
      schoolCode: json['schoolCode']?.toString(),
    );
  }
}

class Counters {
  final int? totalStudents;
  final int? totalStudentsGrowth;
  final int? totalSubjects;
  final int? totalSubjectsGrowth;
  final int? lessonCompleted;
  final int? lessonCompletedGrowth;
  final int? quizCompleted;
  final int? quizCompletedGrowth;

  Counters({
    this.totalStudents,
    this.totalStudentsGrowth,
    this.totalSubjects,
    this.totalSubjectsGrowth,
    this.lessonCompleted,
    this.lessonCompletedGrowth,
    this.quizCompleted,
    this.quizCompletedGrowth,
  });

  factory Counters.fromJson(Map<String, dynamic> json) {
    return Counters(
      totalStudents: _asInt(json['totalStudents']),
      totalStudentsGrowth: _asInt(json['totalStudentsGrowth']),
      totalSubjects: _asInt(json['totalSubjects']),
      totalSubjectsGrowth: _asInt(json['totalSubjectsGrowth']),
      lessonCompleted: _asInt(json['lessonCompleted']),
      lessonCompletedGrowth: _asInt(json['lessonCompletedGrowth']),
      quizCompleted: _asInt(json['quizCompleted']),
      quizCompletedGrowth: _asInt(json['quizCompletedGrowth']),
    );
  }
}

class Charts {
  final List<SubjectOverview>? subjectOverview;
  final List<WeeklyStudents>? weeklyStudents;
  final List<MonthlyTrend>? monthlyCompletionTrend;
  final Milestone? milestone;

  Charts({
    this.subjectOverview,
    this.weeklyStudents,
    this.monthlyCompletionTrend,
    this.milestone,
  });

  factory Charts.fromJson(Map<String, dynamic> json) {
    return Charts(
      subjectOverview: (json['subjectOverview'] as List?)
          ?.map((e) => SubjectOverview.fromJson(_asMap(e)))
          .toList(),
      weeklyStudents: (json['weeklyStudents'] as List?)
          ?.map((e) => WeeklyStudents.fromJson(_asMap(e)))
          .toList(),
      monthlyCompletionTrend: (json['monthlyCompletionTrend'] as List?)
          ?.map((e) => MonthlyTrend.fromJson(_asMap(e)))
          .toList(),
      milestone: json['milestone'] != null
          ? Milestone.fromJson(_asMap(json['milestone']))
          : null,
    );
  }
}

class SubjectOverview {
  final int? total;
  final int? completed;
  final String? courseId;
  final String? subject;
  final int? completionRate;

  SubjectOverview({
    this.total,
    this.completed,
    this.courseId,
    this.subject,
    this.completionRate,
  });

  factory SubjectOverview.fromJson(Map<String, dynamic> json) {
    return SubjectOverview(
      total: _asInt(json['total']),
      completed: _asInt(json['completed']),
      courseId: json['courseId']?.toString(),
      subject: json['subject']?.toString(),
      completionRate: _asInt(json['completionRate']),
    );
  }
}

class WeeklyStudents {
  final String? day;
  final int? total;

  WeeklyStudents({this.day, this.total});

  factory WeeklyStudents.fromJson(Map<String, dynamic> json) {
    return WeeklyStudents(
      day: json['day']?.toString(),
      total: _asInt(json['total']),
    );
  }
}

class MonthlyTrend {
  final String? month;
  final int? monthNumber;
  final int? completed;
  final String? courseId;
  final String? subject;
  final int? year;
  final Map<String, dynamic>? subjects;

  MonthlyTrend({
    this.month,
    this.monthNumber,
    this.completed,
    this.courseId,
    this.subject,
    this.year,
    this.subjects,
  });

  factory MonthlyTrend.fromJson(Map<String, dynamic> json) {
    final map = Map<String, dynamic>.from(json);
    final rawMonth = map.remove('month');
    final monthNumber = _asInt(rawMonth);
    final subject = json['subject']?.toString();
    final completed = _asInt(json['completed']);
    final subjects = subject != null && completed != null
        ? <String, dynamic>{subject: completed}
        : map;

    return MonthlyTrend(
      month: _monthLabel(rawMonth),
      monthNumber: monthNumber,
      completed: completed,
      courseId: json['courseId']?.toString(),
      subject: subject,
      year: _asInt(json['year']),
      subjects: subjects,
    );
  }
}

class Milestone {
  final String? date;
  final String? strand;
  final String? subStrand;
  final String? lesson;
  final Progress? progress;

  Milestone({
    this.date,
    this.strand,
    this.subStrand,
    this.lesson,
    this.progress,
  });

  factory Milestone.fromJson(Map<String, dynamic> json) {
    return Milestone(
      date: json['date']?.toString(),
      strand: json['strand']?.toString(),
      subStrand: json['subStrand']?.toString(),
      lesson: json['lesson']?.toString(),
      progress: json['progress'] != null
          ? Progress.fromJson(_asMap(json['progress']))
          : null,
    );
  }
}

class Progress {
  final int? getReady;
  final int? learn;
  final int? practice;
  final int? quiz;

  Progress({this.getReady, this.learn, this.practice, this.quiz});

  factory Progress.fromJson(Map<String, dynamic> json) {
    return Progress(
      getReady: _asInt(json['getReady']),
      learn: _asInt(json['learn']),
      practice: _asInt(json['practice']),
      quiz: _asInt(json['quiz']),
    );
  }
}

int? _asInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString());
}

Map<String, dynamic> _asMap(dynamic value) {
  if (value is Map<String, dynamic>) return value;
  return Map<String, dynamic>.from(value as Map);
}

String? _monthLabel(dynamic value) {
  const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  final monthNumber = _asInt(value);
  if (monthNumber != null && monthNumber >= 1 && monthNumber <= 12) {
    return months[monthNumber - 1];
  }

  return value?.toString();
}
