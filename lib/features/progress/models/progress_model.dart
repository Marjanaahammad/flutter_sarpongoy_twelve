import 'dart:convert';

class ActivityProgress {
  final int? id;
  final String lessonId;
  final String? courseName;
  final String? strandName;
  final String? subStrandName;
  final String? lessonNumber;
  final String? gradeName;
  final String activityType; // get_ready, learn, practice, independent, quiz
  final String subActivity; // overview, hook, part_a, part_b, part_c, final
  final bool isCompleted;
  final int? score;
  final int? originalScore;
  final int? totalQuestions;
  final DateTime lastUpdated;
  final int syncStatus; // 0: pending, 1: synced

  ActivityProgress({
    this.id,
    required this.lessonId,
    this.courseName,
    this.strandName,
    this.subStrandName,
    this.lessonNumber,
    this.gradeName,
    required this.activityType,
    required this.subActivity,
    required this.isCompleted,
    this.score,
    this.originalScore,
    this.totalQuestions,
    required this.lastUpdated,
    this.syncStatus = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'lesson_id': lessonId,
      'course_name': courseName,
      'strand_name': strandName,
      'sub_strand_name': subStrandName,
      'lesson_number': lessonNumber,
      'grade_name': gradeName,
      'activity_type': activityType,
      'sub_activity': subActivity,
      'is_completed': isCompleted ? 1 : 0,
      'score': score,
      'original_score': originalScore,
      'practice_original_score': activityType == 'independent' ? originalScore : null,
      'quiz_original_score': activityType == 'quiz' ? originalScore : null,
      'total_questions': totalQuestions,
      'last_updated': lastUpdated.toIso8601String(),
      'sync_status': syncStatus,
    };
  }

  factory ActivityProgress.fromMap(Map<String, dynamic> map) {
    // Handle both local DB (snake_case) and backend (camelCase) keys
    final lessonId = map['lesson_id'] ?? map['lessonId'] ?? "unknown";
    final activityType = map['activity_type'] ?? map['activityType'] ?? "unknown";
    final subActivity = map['sub_activity'] ?? map['subActivity'] ?? "unknown";
    
    // Handle is_completed (int from DB) or is_completed/isCompleted/status (from backend)
    bool isCompleted = false;
    if (map['is_completed'] != null) {
      if (map['is_completed'] is int) {
        isCompleted = map['is_completed'] == 1;
      } else if (map['is_completed'] is bool) {
        isCompleted = map['is_completed'];
      }
    } else if (map['isCompleted'] != null) {
      isCompleted = map['isCompleted'] == true || map['isCompleted'] == 1;
    } else if (map['status'] == 'completed') {
      isCompleted = true;
    }

    return ActivityProgress(
      id: map['id'],
      lessonId: lessonId,
      courseName: map['course_name'] ?? map['courseName'],
      strandName: map['strand_name'] ?? map['strandName'],
      subStrandName: map['sub_strand_name'] ?? map['subStrandName'],
      lessonNumber: (map['lesson_number'] ?? map['lessonNumber'])?.toString(),
      gradeName: map['grade_name'] ?? map['gradeName'],
      activityType: activityType,
      subActivity: subActivity,
      isCompleted: isCompleted,
      score: map['score'],
      originalScore: map['original_score'] ?? map['originalScore'],
      totalQuestions: map['total_questions'] ?? map['totalQuestions'],
      lastUpdated: map['last_updated'] != null 
          ? DateTime.parse(map['last_updated']) 
          : (map['lastUpdated'] != null 
              ? DateTime.parse(map['lastUpdated']) 
              : DateTime.now()),
      syncStatus: map['sync_status'] ?? map['syncStatus'] ?? 0,
    );
  }

  ActivityProgress copyWith({
    int? id,
    String? lessonId,
    String? courseName,
    String? strandName,
    String? subStrandName,
    String? lessonNumber,
    String? gradeName,
    String? activityType,
    String? subActivity,
    bool? isCompleted,
    int? score,
    int? originalScore,
    int? totalQuestions,
    DateTime? lastUpdated,
    int? syncStatus,
  }) {
    return ActivityProgress(
      id: id ?? this.id,
      lessonId: lessonId ?? this.lessonId,
      courseName: courseName ?? this.courseName,
      strandName: strandName ?? this.strandName,
      subStrandName: subStrandName ?? this.subStrandName,
      lessonNumber: lessonNumber ?? this.lessonNumber,
      gradeName: gradeName ?? this.gradeName,
      activityType: activityType ?? this.activityType,
      subActivity: subActivity ?? this.subActivity,
      isCompleted: isCompleted ?? this.isCompleted,
      score: score ?? this.score,
      originalScore: originalScore ?? this.originalScore,
      totalQuestions: totalQuestions ?? this.totalQuestions,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      syncStatus: syncStatus ?? this.syncStatus,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityProgress.fromJson(String source) =>
      ActivityProgress.fromMap(json.decode(source));
}
