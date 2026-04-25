import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/constants/api_constants.dart';
import 'package:flutter_sarpongoy_twelve/core/constants/key_constants.dart';
import 'package:flutter_sarpongoy_twelve/core/database/database_service.dart';
import 'package:flutter_sarpongoy_twelve/core/services/connectivity_service.dart';
import 'package:flutter_sarpongoy_twelve/core/services/request_queue_service.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/progress_repository.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/sync_repo.dart';
import 'package:flutter_sarpongoy_twelve/features/sidebar/controller/sidebar_controller.dart';
import 'package:get/get.dart';

import '../config/debug_print.dart';

class SyncService extends GetxService {
  final ConnectivityService _connectivityService = ConnectivityService.instance;
  ProgressRepository get _progressRepo => Get.find<ProgressRepository>();

  final syncRepo = Get.find<SyncRepo>();

  @override
  void onInit() {
    super.onInit();
    // Listen to connectivity changes
    _connectivityService.connectivityStream.listen((connected) {
      if (connected) {
        debugPrint("Back online, starting full curriculum sync...");
        syncAllCurriculumData();
      }
    });
  }

  /// Pull progress data FROM backend into local DB.
  /// Called on app launch when the user is authenticated and online.
  /// - First launch: `since` is null → backend returns all records.
  /// - Subsequent launches: sends stored `last_synced_date` → backend returns only newer records.
  Future<void> pullFromBackend() async {
    if (!_connectivityService.isConnected) {
      DPrint.log('Pull sync skipped — device is offline');
      return;
    }

    try {
      final db = DatabaseService.instance;
      final String? since = await db.getSetting(KeyConstants.lastSyncedDate);

      DPrint.log('Pulling progress from backend (since: $since)');

      final result = await syncRepo.syncGetStudentActivities(since);

      if (result.isLeft()) {
        result.fold(
          (failure) => DPrint.log('Pull sync failed: ${failure.message}'),
          (_) {},
        );
        return;
      }

      // Extract the activity list from the success result
      List<ActivityProgress> activities = [];
      result.fold(
        (_) {},
        (success) => activities = success.data,
      );

      DPrint.log('Pulled ${activities.length} records from backend');

      // Save all pulled records to local DB (marked as synced)
      for (final activity in activities) {
        await _progressRepo.saveProgress(activity.copyWith(syncStatus: 1));
      }

      if (activities.isNotEmpty) {
        // Update last_synced_date for next launch
        await db.putSetting(
          KeyConstants.lastSyncedDate,
          DateTime.now().toIso8601String(),
        );
        DPrint.log('Pull sync complete. last_synced_date updated.');
      } else if (since != null) {
        // We had a since-date but got 0 records — the stored date may be stale/invalid.
        // Clear it so the next launch re-fetches everything from scratch.
        await db.deleteSetting(KeyConstants.lastSyncedDate);
        DPrint.log(
            'No records returned for since=$since — cleared last_synced_date for full re-fetch next launch.');
      } else {
        DPrint.log('Pull sync complete. No new records from backend.');
      }

      // Refresh the UI so pulled progress is immediately visible
      if (Get.isRegistered<SidebarController>()) {
        await Get.find<SidebarController>().loadActualProgress();
        DPrint.log('UI refreshed after pull sync.');
      }
    } catch (e) {
      DPrint.log('Error during pull sync: $e');
    }
  }

  Future<void> syncAllCurriculumData() async {
    DPrint.log('Start sync');
    try {
      final allProgress = await _progressRepo.getAllProgress();

      // Build a structured payload grouping progress by hierarchy
      Map<String, dynamic> payload = {
        'timestamp': DateTime.now().toIso8601String(),
        'grade_name': Get.find<SidebarController>().selectedGrade.value,
        'progress_data': allProgress.map((p) => p.toMap()).toList(),
      };

      debugPrint(
        "Syncing all curriculum data (${allProgress.length} items)...",
      );

      await RequestQueueService().addToQueue(
        endpoint: '${ApiConstants.baseUrl}/student/activities/sync',
        method: 'POST',
        data: payload,
      );

      final sync = await syncRepo.syncStudentActivities(payload);

      debugPrint("Full curriculum sync enqueued.");
    } catch (e) {
      debugPrint("Error during full curriculum sync: $e");
    }
  }

  // Allow manual trigger
  Future<void> triggerSync() async {
    if (_connectivityService.isConnected) {
      await syncAllCurriculumData();
    }
  }
}
