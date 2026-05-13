import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/sidebar/controller/sidebar_controller.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:video_player/video_player.dart';

import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/learn__model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/progress_repository.dart';

class LearnController extends GetxController {
  final AudioPlayer _player = AudioPlayer();
  VideoPlayerController? videoController;
  final ProgressRepository _progressRepo = Get.find<ProgressRepository>();

  late LearnModel model;
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
  final RxBool isVideoInitialized = false.obs;

  /// Index of the currently displayed part (0 = part_a, 1 = part_b, …)
  final RxInt currentPartIndex = 0.obs;

  /// Per-part session completion flags (audio must finish this session to unlock Next)
  final RxList<bool> isPartFinishedInSession = <bool>[].obs;

  /// Per-part persistent DB completion flags
  final RxList<bool> isPartCompleted = <bool>[].obs;

  int _loadCount = 0;

  // ── Convenience getters ──────────────────────────────────────────────────────

  bool get isFirstPart => currentPartIndex.value == 0;
  bool get isLastPart => currentPartIndex.value == model.parts.length - 1;

  LearnPart get currentPart => model.parts[currentPartIndex.value];

  bool get isCurrentPartFinished {
    final idx = currentPartIndex.value;
    return isPartFinishedInSession[idx] || isPartCompleted[idx];
  }

  // ── Initialisation ───────────────────────────────────────────────────────────

  void initData(
    LearnModel data,
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

    currentPartIndex.value = 0;

    // Initialise per-part lists with the correct length
    final count = model.parts.length;
    isPartFinishedInSession.assignAll(List.filled(count, true));
    isPartCompleted.assignAll(List.filled(count, false));

    _loadExistingProgress();
    if (currentPart.videoPath != null) {
      loadVideo(currentPart.videoPath!, delayMs: 3500);
    } else {
      loadAudio(currentPart.audioPath, delayMs: 3500);
    }
  }

  @override
  void onInit() {
    super.onInit();
    _initStreams();
  }

  // ── Progress ─────────────────────────────────────────────────────────────────

  Future<void> _loadExistingProgress() async {
    for (int i = 0; i < model.parts.length; i++) {
      final subActivity = _subActivityKey(i);
      final record = await _progressRepo.getSpecificProgress(
        lessonId,
        'learn',
        subActivity,
      );
      if (record != null) isPartCompleted[i] = record.isCompleted;
    }
  }

  String _subActivityKey(int index) =>
      'part_${String.fromCharCode(97 + index)}'; // 97 = 'a'

  Future<void> _saveProgress(int index, bool completed) async {
    try {
      final progress = ActivityProgress(
        lessonId: lessonId,
        courseName: courseName,
        strandName: strandName,
        subStrandName: subStrandName,
        lessonNumber: lessonNumber,
        gradeName: gradeName,
        activityType: 'learn',
        subActivity: _subActivityKey(index),
        isCompleted: completed,
        lastUpdated: DateTime.now(),
      );
      await _progressRepo.saveProgress(progress);
      Get.find<SidebarController>().loadActualProgress();
      debugPrint(
        'Learn progress saved for ${_subActivityKey(index)}: $completed',
      );
    } catch (e) {
      debugPrint('Error saving learn progress: $e');
    }
  }

  // ── Audio streams ────────────────────────────────────────────────────────────

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
        _handlePartCompletion();
        if (!isLooping.value) {
          _player.pause();
          _player.seek(Duration.zero);
        }
      }
    });
  }

  void _initVideoStreams() {
    videoController?.addListener(() {
      if (videoController == null) return;
      position.value = videoController!.value.position;
      duration.value = videoController!.value.duration;
      isPlaying.value = videoController!.value.isPlaying;

      if (videoController!.value.position >= videoController!.value.duration &&
          videoController!.value.duration > Duration.zero) {
        _handlePartCompletion(); // Reusing the same completion logic
        if (!isLooping.value) {
          videoController!.pause();
          videoController!.seekTo(Duration.zero);
        }
      }
    });
  }

  void _handlePartCompletion() async {
    final idx = currentPartIndex.value;
    final isVideo = model.parts[idx].videoPath != null;

    if (isVideo) {
      if (videoController == null ||
          videoController!.value.position <
              videoController!.value.duration -
                  const Duration(milliseconds: 500)) {
        debugPrint(
          'Learn video reported completion but position is not at end. Ignoring.',
        );
        return;
      }
    } else {
      // Safety check: ensure position is actually at the end
      if (_player.position <
          (_player.duration ?? Duration.zero) -
              const Duration(milliseconds: 500)) {
        debugPrint(
          'Learn audio reported completion but position is not at end. Ignoring.',
        );
        return;
      }
    }

    debugPrint('Learn part completed. Part index: $idx');

    isPartFinishedInSession[idx] = true;
    isPartFinishedInSession.refresh();

    if (!isPartCompleted[idx]) {
      isPartCompleted[idx] = true;
      isPartCompleted.refresh();
      await _saveProgress(idx, true);
    }
  }

  // ── Navigation ───────────────────────────────────────────────────────────────

  void goToNextPart() {
    if (!isCurrentPartFinished) {
      debugPrint('Cannot advance: current part not finished this session');
      return;
    }
    if (isLastPart) return; // caller should handle completion
    currentPartIndex.value++;
    if (currentPart.videoPath != null) {
      loadVideo(currentPart.videoPath!, delayMs: 500);
    } else {
      loadAudio(currentPart.audioPath, delayMs: 500);
    }
  }

  void goToPreviousPart() {
    if (isFirstPart) return;
    currentPartIndex.value--;
    if (currentPart.videoPath != null) {
      loadVideo(currentPart.videoPath!, delayMs: 500);
    } else {
      loadAudio(currentPart.audioPath, delayMs: 500);
    }
  }

  // ── Audio controls ───────────────────────────────────────────────────────────

  Future<void> loadAudio(String assetPath, {int delayMs = 0}) async {
    final currentLoad = ++_loadCount;
    try {
      await _player.setAsset(assetPath);
      if (delayMs > 0) {
        await Future.delayed(Duration(milliseconds: delayMs));
      }
      if (currentLoad == _loadCount) {
        await _player.play();
      }
    } catch (e) {
      debugPrint('Error loading audio ($assetPath): $e');
    }
  }

  Future<void> loadVideo(String path, {int delayMs = 0}) async {
    final currentLoad = ++_loadCount;
    try {
      // Pause audio if playing
      if (_player.playing) _player.pause();

      // Dispose existing video controller
      await videoController?.dispose();
      isVideoInitialized.value = false;

      if (path.startsWith('http')) {
        videoController = VideoPlayerController.networkUrl(Uri.parse(path));
      } else {
        videoController = VideoPlayerController.asset(path);
      }

      await videoController!.initialize();
      _initVideoStreams();
      isVideoInitialized.value = true;

      if (delayMs > 0) {
        await Future.delayed(Duration(milliseconds: delayMs));
      }

      if (currentLoad == _loadCount) {
        await videoController!.play();
      }
    } catch (e) {
      debugPrint('Error loading video ($path): $e');
    }
  }

  void playPause() {
    if (currentPart.videoPath != null) {
      if (videoController?.value.isPlaying ?? false) {
        videoController?.pause();
      } else {
        if (videoController != null &&
            videoController!.value.position >=
                videoController!.value.duration) {
          videoController!.seekTo(Duration.zero);
        }
        videoController?.play();
      }
      return;
    }

    if (isPlaying.value) {
      _player.pause();
    } else {
      if (position.value >= duration.value && duration.value.inSeconds > 0) {
        _player.seek(Duration.zero);
      }
      _player.play();
    }
  }

  void skip(int seconds) {
    final newPosition = position.value + Duration(seconds: seconds);
    if (currentPart.videoPath != null) {
      if (newPosition < Duration.zero) {
        videoController?.seekTo(Duration.zero);
      } else if (newPosition > duration.value) {
        videoController?.seekTo(duration.value);
      } else {
        videoController?.seekTo(newPosition);
      }
      return;
    }

    if (newPosition < Duration.zero) {
      _player.seek(Duration.zero);
    } else if (newPosition > duration.value) {
      _player.seek(duration.value);
    } else {
      _player.seek(newPosition);
    }
  }

  void restart() async {
    if (currentPart.videoPath != null) {
      await videoController?.seekTo(Duration.zero);
      if (!(videoController?.value.isPlaying ?? false))
        await videoController?.play();
      return;
    }
    await _player.seek(Duration.zero);
    if (!isPlaying.value) await _player.play();
  }

  void toggleLoop() {
    isLooping.value = !isLooping.value;
    if (currentPart.videoPath != null) {
      videoController?.setLooping(isLooping.value);
      return;
    }
    _player.setLoopMode(isLooping.value ? LoopMode.one : LoopMode.off);
  }

  void seek(Duration pos) {
    if (currentPart.videoPath != null) {
      videoController?.seekTo(pos);
      return;
    }
    _player.seek(pos);
  }

  String formatTime(Duration d) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(d.inMinutes.remainder(60));
    final seconds = twoDigits(d.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  void onClose() {
    _player.dispose();
    videoController?.dispose();
    super.onClose();
  }
}
