import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'package:flutter_sarpongoy_twelve/core/database/database_service.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/response/get_profile_response_model.dart';

import '../config/debug_print.dart';

class ProfileStorageService {
  final DatabaseService _dbService = DatabaseService.instance;
  static const String _tableName = 'user_profile';
  static const String _fixedId =
      'current_user_profile'; // We only store one profile

  /// Save profile data locally to SQFlite
  Future<void> saveProfile(GetStudentProfileResponseModel profile) async {
    try {
      final db = await _dbService.database;
      final String jsonStr = jsonEncode(profile.toJson());

      await db.insert(
        _tableName,
        {
          'id': _fixedId,
          'profile_json': jsonStr,
          'last_updated': DateTime.now().toIso8601String(),
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      DPrint.info("Profile data saved to SQFlite");
    } catch (e) {
      DPrint.error("Failed to save profile to SQFlite: $e");
    }
  }

  /// Retrieve profile data from SQFlite
  Future<GetStudentProfileResponseModel?> getProfile() async {
    try {
      final db = await _dbService.database;
      final List<Map<String, dynamic>> maps = await db.query(
        _tableName,
        where: 'id = ?',
        whereArgs: [_fixedId],
      );

      if (maps.isNotEmpty) {
        final String jsonStr = maps.first['profile_json'] as String;
        final Map<String, dynamic> jsonMap = jsonDecode(jsonStr);
        return GetStudentProfileResponseModel.fromJson(jsonMap);
      }
    } catch (e) {
      DPrint.error("Failed to retrieve profile from SQFlite: $e");
    }
    return null;
  }

  /// Clear profile data from SQFlite
  Future<void> clearProfile() async {
    try {
      final db = await _dbService.database;
      await db.delete(
        _tableName,
        where: 'id = ?',
        whereArgs: [_fixedId],
      );
      DPrint.info("SQFlite profile data cleared");
    } catch (e) {
      DPrint.error("Failed to clear profile from SQFlite: $e");
    }
  }
}
