import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../flutx_core/debug_print.dart';

class BeceDatabaseService {
  static final BeceDatabaseService instance = BeceDatabaseService._init();
  static Database? _database;

  static const int _version = 2;

  BeceDatabaseService._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final path = join(await getDatabasesPath(), 'bece_progress.db');
    return await openDatabase(
      path,
      version: _version,
      onCreate: _createDB,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE bece_progress (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        course_name TEXT,
        strand_name TEXT,
        sub_strand_name TEXT,
        grade_name TEXT,
        activity_type TEXT,
        first_attempt_score INTEGER,
        last_attempt_score INTEGER,
        total_questions INTEGER,
        last_question_index INTEGER,
        user_answers_json TEXT,
        done_date TEXT
      )
    ''');

    DPrint.info('BECE progress database table created');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await db.execute(
          'ALTER TABLE bece_progress ADD COLUMN last_question_index INTEGER');
      await db.execute(
          'ALTER TABLE bece_progress ADD COLUMN user_answers_json TEXT');
      DPrint.info('BECE progress database upgraded to v2');
    }
  }
}
