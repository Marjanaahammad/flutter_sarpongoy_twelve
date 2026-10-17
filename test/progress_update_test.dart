import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';

ActivityProgress result(String time, int score, {int? originalScore}) =>
    ActivityProgress(
      lessonId: 'Search engines',
      activityType: 'quiz',
      subActivity: 'final_score',
      isCompleted: true,
      score: score,
      originalScore: originalScore,
      totalQuestions: 10,
      lastUpdated: DateTime.parse(time),
    );

void main() {
  test('fresh attempt replaces a future-dated result and survives a stale pull',
      () {
    final existing = result('2026-10-17T11:05:33.708Z', 4, originalScore: 4);
    final attempt = result('2026-10-17T11:28:51.807051+06:00', 9);
    final saved = attempt.resolveUpdate(existing, fromBackend: false)!;

    expect(saved.score, 9);
    expect(saved.originalScore, 4);
    expect(saved.syncStatus, 0);
    expect(saved.lastUpdated.isAfter(existing.lastUpdated), isTrue);
    expect(existing.resolveUpdate(saved, fromBackend: true), isNull);
  });

  test('later local attempts update latest score while preserving first score',
      () {
    final existing = result('2026-10-17T05:00:00Z', 9, originalScore: 4);
    final attempt = result('2026-10-17T05:30:00Z', 6);
    final saved = attempt.resolveUpdate(existing, fromBackend: false)!;

    expect(saved.score, 6);
    expect(saved.originalScore, 4);
    expect(saved.lastUpdated, attempt.lastUpdated);
  });

  test('newer backend results are accepted', () {
    final existing = result('2026-10-17T05:00:00Z', 4);
    final remote = result('2026-10-17T05:30:00Z', 8);
    expect(remote.resolveUpdate(existing, fromBackend: true)?.score, 8);
  });

  test('progress timestamps are serialized with an explicit UTC timezone', () {
    final progress = result('2026-10-17T11:28:51+06:00', 9);
    expect(progress.toMap()['last_updated'], '2026-10-17T05:28:51.000Z');
    expect(ActivityProgress.fromMap(progress.toMap()).lastUpdated,
        progress.lastUpdated);
  });
}
