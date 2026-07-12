import 'dart:convert';

class BeceProgress {
  final int? id;
  final String courseName;
  final String strandName;
  final String subStrandName;
  final String gradeName;
  final String activityType; // 'objectives' or 'theory'
  final int? firstAttemptScore;
  final int? lastAttemptScore;
  final int? totalQuestions;
  final DateTime doneDate;

  BeceProgress({
    this.id,
    required this.courseName,
    required this.strandName,
    required this.subStrandName,
    required this.gradeName,
    required this.activityType,
    this.firstAttemptScore,
    this.lastAttemptScore,
    this.totalQuestions,
    required this.doneDate,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'course_name': courseName,
      'strand_name': strandName,
      'sub_strand_name': subStrandName,
      'grade_name': gradeName,
      'activity_type': activityType,
      'first_attempt_score': firstAttemptScore,
      'last_attempt_score': lastAttemptScore,
      'total_questions': totalQuestions,
      'done_date': doneDate.toIso8601String(),
    };
  }

  factory BeceProgress.fromMap(Map<String, dynamic> map) {
    return BeceProgress(
      id: map['id'],
      courseName: map['course_name'] ?? "",
      strandName: map['strand_name'] ?? "",
      subStrandName: map['sub_strand_name'] ?? "",
      gradeName: map['grade_name'] ?? "",
      activityType: map['activity_type'] ?? "",
      firstAttemptScore: map['first_attempt_score'],
      lastAttemptScore: map['last_attempt_score'],
      totalQuestions: map['total_questions'],
      doneDate: map['done_date'] != null
          ? DateTime.parse(map['done_date'])
          : DateTime.now(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BeceProgress.fromJson(String source) =>
      BeceProgress.fromMap(json.decode(source));
}
