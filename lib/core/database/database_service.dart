import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../flutx_core/debug_print.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._init();
  static Database? _database;

  static const int _version = 8;

  DatabaseService._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final path = join(await getDatabasesPath(), 'sarpongoy_progress.db');
    return await openDatabase(
      path,
      version: _version,
      onCreate: _createDB,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE activity_progress (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        lesson_id TEXT,
        course_name TEXT,
        strand_name TEXT,
        sub_strand_name TEXT,
        lesson_number TEXT,
        grade_name TEXT,
        activity_type TEXT,
        sub_activity TEXT,
        is_completed INTEGER,
        score INTEGER,
        original_score INTEGER,
        practice_original_score INTEGER,
        quiz_original_score INTEGER,
        total_questions INTEGER,
        activity_minutes INTEGER,
        last_updated TEXT,
        sync_status INTEGER DEFAULT 0
      )
    ''');

    await db.execute('''
      CREATE TABLE user_profile (
        id TEXT PRIMARY KEY,
        profile_json TEXT,
        last_updated TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE app_settings (
        key TEXT PRIMARY KEY,
        value TEXT
      )
    ''');

    DPrint.info('Database tables created');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      // Adding hierarchy metadata columns from v1 to v2
      await db
          .execute('ALTER TABLE activity_progress ADD COLUMN course_name TEXT');
      await db
          .execute('ALTER TABLE activity_progress ADD COLUMN strand_name TEXT');
      await db.execute(
          'ALTER TABLE activity_progress ADD COLUMN sub_strand_name TEXT');
      await db.execute(
          'ALTER TABLE activity_progress ADD COLUMN lesson_number TEXT');
      DPrint.info('Database upgraded to version 2');
    }
    if (oldVersion < 3) {
      // Adding grade_name from v2 to v3
      await db
          .execute('ALTER TABLE activity_progress ADD COLUMN grade_name TEXT');
      DPrint.info('Database upgraded to version 3');
    }
    if (oldVersion < 4) {
      // Adding original_score from v3 to v4
      await db.execute(
          'ALTER TABLE activity_progress ADD COLUMN original_score INTEGER');
      DPrint.info('Database upgraded to version 4');
    }
    if (oldVersion < 5) {
      // Adding practice_original_score and quiz_original_score from v4 to v5
      await db.execute(
          'ALTER TABLE activity_progress ADD COLUMN practice_original_score INTEGER');
      await db.execute(
          'ALTER TABLE activity_progress ADD COLUMN quiz_original_score INTEGER');
      DPrint.info('Database upgraded to version 5');
    }
    if (oldVersion < 6) {
      // Adding user_profile table from v5 to v6
      await db.execute('''
        CREATE TABLE IF NOT EXISTS user_profile (
          id TEXT PRIMARY KEY,
          profile_json TEXT,
          last_updated TEXT
        )
      ''');
      DPrint.info('Database upgraded to version 6');
    }
    if (oldVersion < 7) {
      // Adding app_settings key-value table from v6 to v7
      await db.execute('''
        CREATE TABLE IF NOT EXISTS app_settings (
          key TEXT PRIMARY KEY,
          value TEXT
        )
      ''');
      DPrint.info('Database upgraded to version 7');
    }
    if (oldVersion < 8) {
      // Adding activity_minutes column from v7 to v8
      await db.execute(
          'ALTER TABLE activity_progress ADD COLUMN activity_minutes INTEGER');
      DPrint.info('Database upgraded to version 8');
    }
  }

  /// Read a string setting by key. Returns null if not found.
  Future<String?> getSetting(String key) async {
    final db = await database;
    final result = await db.query(
      'app_settings',
      where: 'key = ?',
      whereArgs: [key],
      limit: 1,
    );
    if (result.isEmpty) return null;
    return result.first['value'] as String?;
  }

  /// Insert or update a string setting by key.
  Future<void> putSetting(String key, String value) async {
    final db = await database;
    await db.insert(
      'app_settings',
      {'key': key, 'value': value},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  /// Delete a setting by key.
  Future<void> deleteSetting(String key) async {
    final db = await database;
    await db.delete('app_settings', where: 'key = ?', whereArgs: [key]);
  }

  /// Clear all data from the database (used for account deletion)
  Future<void> clearAllData() async {
    final db = await database;
    final batch = db.batch();
    batch.delete('activity_progress');
    batch.delete('user_profile');
    batch.delete('app_settings');
    await batch.commit(noResult: true);
    DPrint.info('All database tables cleared');
  }

  Future<void> close() async {
    final db = await instance.database;
    db.close();
  }
}
