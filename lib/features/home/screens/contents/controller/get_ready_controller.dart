import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/sidebar/controller/sidebar_controller.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/get_ready_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/progress_repository.dart';

class GetReadyController extends GetxController {
  final AudioPlayer _player = AudioPlayer();
  final ProgressRepository _progressRepo = Get.find<ProgressRepository>();

  late GetReadyModel model;
  late String lessonId;
  String? courseName;
  String? strandName;
  String? subStrandName;
  String? lessonNumber;
  String? gradeName;

  final Rx<Duration> duration = Duration.zero.obs;
  final Rx<Duration> position = Duration.zero.obs;
  final RxBool isPlaying = false.obs;
  final RxBool isLooping = false.obs;
  final RxBool isShuffled = false.obs;
  var showHook = false.obs;
  int _loadCount =
      0; // Tracks active audio load requests to prevent race conditions

  // Persistent progress states (from DB)
  final RxBool isOverviewCompleted = false.obs;
  final RxBool isHookCompleted = false.obs;

  // Session-based locking flags (must finish audio in current session)
  final RxBool isOverviewFinishedInSession = false.obs;
  final RxBool isHookFinishedInSession = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initStreams();
  }

  void initData(
    GetReadyModel data,
    String id, {
    String? course,
    String? strand,
    String? subStrand,
    String? number,
    String? grade,
  }) {
    model = data;
    lessonId = id;
    courseName = course;
    strandName = strand;
    subStrandName = subStrand;
    lessonNumber = number;
    gradeName = grade;

    // Reset session flags every time we enter the lesson
    isOverviewFinishedInSession.value = false;
    isHookFinishedInSession.value = false;

    _loadExistingProgress();
    loadAudio(model.overviewAudioPath, delayMs: 3500);
  }

  Future<void> _loadExistingProgress() async {
    final overviewProgress = await _progressRepo.getSpecificProgress(
      lessonId,
      'get_ready',
      'overview',
    );
    if (overviewProgress != null) {
      isOverviewCompleted.value = overviewProgress.isCompleted;
      // Note: We don't set isOverviewFinishedInSession to true here
      // because we want them to listen again this session if that's the requirement.
    }

    final hookProgress = await _progressRepo.getSpecificProgress(
      lessonId,
      'get_ready',
      'hook',
    );
    if (hookProgress != null) {
      isHookCompleted.value = hookProgress.isCompleted;
    }
  }

  void _initStreams() {
    _player.durationStream.listen((d) {
      duration.value = d ?? Duration.zero;
    });

    _player.positionStream.listen((p) {
      position.value = p;
    });

    _player.playerStateStream.listen((state) {
      isPlaying.value = state.playing;

      if (state.processingState == ProcessingState.completed) {
        _handleAudioCompletion();
        if (!isLooping.value) {
          _player.pause();
          _player.seek(Duration.zero);
        }
      }
    });
  }

  void _handleAudioCompletion() async {
    // Safety check: ensure we are actually at the end of the audio
    if (_player.position <
        (_player.duration ?? Duration.zero) -
            const Duration(milliseconds: 500)) {
      debugPrint(
        "Audio reported completion but position is not at end. Ignoring.",
      );
      return;
    }

    debugPrint("Audio completed. showHook: ${showHook.value}");
    if (!showHook.value) {
      isOverviewFinishedInSession.value = true;
      if (!isOverviewCompleted.value) {
        debugPrint("Marking overview as completed in DB");
        isOverviewCompleted.value = true;
        await _saveProgress('overview', true);
      }
    } else {
      isHookFinishedInSession.value = true;
      if (!isHookCompleted.value) {
        debugPrint("Marking hook as completed in DB");
        isHookCompleted.value = true;
        await _saveProgress('hook', true);
      }
    }
  }

  Future<void> _saveProgress(String subActivity, bool completed) async {
    try {
      final progress = ActivityProgress(
        lessonId: lessonId,
        courseName: courseName,
        strandName: strandName,
        subStrandName: subStrandName,
        lessonNumber: lessonNumber,
        gradeName: gradeName,
        activityType: 'get_ready',
        subActivity: subActivity,
        isCompleted: completed,
        lastUpdated: DateTime.now(),
      );
      await _progressRepo.saveProgress(progress);
      Get.find<SidebarController>().loadActualProgress();
      debugPrint("Progress saved for $subActivity: $completed");
    } catch (e) {
      debugPrint("Error saving progress: $e");
    }
  }

  Future<void> loadAudio(String assetPath, {int delayMs = 0}) async {
    final currentLoad = ++_loadCount;
    try {
      await _player.setAsset(assetPath);

      if (delayMs > 0) {
        await Future.delayed(Duration(milliseconds: delayMs));
      }

      // Only play if this is still the most recent load request
      if (currentLoad == _loadCount) {
        await _player.play();
      }
    } catch (e) {
      debugPrint("Error loading audio ($assetPath): $e");
    }
  }

  void playPause() {
    if (isPlaying.value) {
      _player.pause();
    } else {
      if (position.value >= duration.value && duration.value.inSeconds > 0) {
        _player.seek(Duration.zero);
      }
      _player.play();
    }
  }

  void restart() async {
    await _player.seek(Duration.zero);
    if (!isPlaying.value) {
      await _player.play();
    }
  }

  void seek(Duration pos) {
    _player.seek(pos);
  }

  void goToHook() {
    showHook.value = true;
    loadAudio(model.hookAudioPath, delayMs: 500);
  }

  void goBackToOverview() {
    showHook.value = false;
    loadAudio(model.overviewAudioPath, delayMs: 3500);
  }

  @override
  void onClose() {
    _player.dispose();
    super.onClose();
  }
}
