import '../../../core/database/database_service.dart';
import '../../../core/config/debug_print.dart';
import '../models/progress_model.dart';

class ProgressRepository {
  final _dbService = DatabaseService.instance;

  Future<int> saveProgress(ActivityProgress progress) async {
    final db = await _dbService.database;

    // Check if progress already exists for this lesson, type and sub-activity
    final existing = await db.query(
      'activity_progress',
      where:
          'LOWER(lesson_id) = LOWER(?) AND activity_type = ? AND sub_activity = ?',
      whereArgs: [
        progress.lessonId,
        progress.activityType,
        progress.subActivity,
      ],
    );

    if (existing.isNotEmpty) {
      final existingProgress = ActivityProgress.fromMap(existing.first as Map<String, dynamic>);

      // Comparison using UTC to be safe across timezones/formats
      if (progress.lastUpdated.toUtc().isBefore(existingProgress.lastUpdated.toUtc())) {
        DPrint.info('Skipping save: Incoming data (${progress.lastUpdated}) is older than existing record (${existingProgress.lastUpdated})');
        return existing.first['id'] as int;
      }

      // Update existing record
      return await db.update(
        'activity_progress',
        progress.toMap(),
        where: 'id = ?',
        whereArgs: [existing.first['id'] as int],
      );
    } else {
      // Insert new record
      return await db.insert('activity_progress', progress.toMap());
    }
  }

  Future<List<ActivityProgress>> getLessonProgress(String lessonId) async {
    final db = await _dbService.database;
    final result = await db.query(
      'activity_progress',
      where: 'LOWER(lesson_id) = LOWER(?)',
      whereArgs: [lessonId],
    );

    return result.map((json) => ActivityProgress.fromMap(json)).toList();
  }

  Future<ActivityProgress?> getSpecificProgress(
    String lessonId,
    String activityType,
    String subActivity,
  ) async {
    final db = await _dbService.database;
    final result = await db.query(
      'activity_progress',
      where:
          'LOWER(lesson_id) = LOWER(?) AND activity_type = ? AND sub_activity = ?',
      whereArgs: [lessonId, activityType, subActivity],
    );

    if (result.isNotEmpty) {
      return ActivityProgress.fromMap(result.first);
    }
    return null;
  }

  Future<List<ActivityProgress>> getUnsyncedProgress() async {
    final db = await _dbService.database;
    final result = await db.query(
      'activity_progress',
      where: 'sync_status = 0',
    );

    return result.map((json) => ActivityProgress.fromMap(json)).toList();
  }

  Future<void> markAsSynced(int id) async {
    final db = await _dbService.database;
    await db.update(
      'activity_progress',
      {'sync_status': 1},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<ActivityProgress>> getAllProgress() async {
    final db = await _dbService.database;
    final result = await db.query('activity_progress');
    return result.map((json) => ActivityProgress.fromMap(json)).toList();
  }
}
