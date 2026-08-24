import '../../../core/database/bece_database_service.dart';
import '../../../core/services/auth_storage_service.dart';
import '../models/bece_progress_model.dart';

class BeceProgressRepository {
  final _dbService = BeceDatabaseService.instance;
  final _authStorageService = AuthStorageService();

  Future<int> saveProgress(BeceProgress progress) async {
    final role = await _authStorageService.getRole();
    if (role?.toLowerCase() == 'teacher') {
      return 0;
    }

    final db = await _dbService.database;

    final existing = await db.query(
      'bece_progress',
      where:
          'LOWER(course_name) = LOWER(?) AND LOWER(strand_name) = LOWER(?) AND LOWER(sub_strand_name) = LOWER(?) AND LOWER(grade_name) = LOWER(?) AND activity_type = ?',
      whereArgs: [
        progress.courseName,
        progress.strandName,
        progress.subStrandName,
        progress.gradeName,
        progress.activityType,
      ],
    );

    if (existing.isNotEmpty) {
      final existingRecord = BeceProgress.fromMap(existing.first);

      // If it exists, we preserve the original first_attempt_score
      final updated = BeceProgress(
        id: existingRecord.id,
        courseName: progress.courseName,
        strandName: progress.strandName,
        subStrandName: progress.subStrandName,
        gradeName: progress.gradeName,
        activityType: progress.activityType,
        firstAttemptScore:
            existingRecord.firstAttemptScore ?? progress.firstAttemptScore,
        lastAttemptScore:
            progress.lastAttemptScore ?? existingRecord.lastAttemptScore,
        totalQuestions:
            progress.totalQuestions ?? existingRecord.totalQuestions,
        lastQuestionIndex:
            progress.lastQuestionIndex ?? existingRecord.lastQuestionIndex,
        userAnswersJson:
            progress.userAnswersJson ?? existingRecord.userAnswersJson,
        doneDate: progress.doneDate,
      );

      return await db.update(
        'bece_progress',
        updated.toMap(),
        where: 'id = ?',
        whereArgs: [existingRecord.id],
      );
    } else {
      return await db.insert('bece_progress', progress.toMap());
    }
  }

  Future<BeceProgress?> getProgress({
    required String courseName,
    required String strandName,
    required String subStrandName,
    required String gradeName,
    required String activityType,
  }) async {
    final db = await _dbService.database;
    final result = await db.query(
      'bece_progress',
      where:
          'LOWER(course_name) = LOWER(?) AND LOWER(strand_name) = LOWER(?) AND LOWER(sub_strand_name) = LOWER(?) AND LOWER(grade_name) = LOWER(?) AND activity_type = ?',
      whereArgs: [
        courseName,
        strandName,
        subStrandName,
        gradeName,
        activityType,
      ],
    );

    if (result.isNotEmpty) {
      return BeceProgress.fromMap(result.first);
    }
    return null;
  }

  Future<List<BeceProgress>> getAllProgress() async {
    final db = await _dbService.database;
    final result = await db.query('bece_progress');
    return result.map((json) => BeceProgress.fromMap(json)).toList();
  }
}
