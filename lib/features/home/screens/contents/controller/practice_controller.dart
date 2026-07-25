import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/practice_model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/models/strand_model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/independent_quiz_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/progress_repository.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/bece_progress_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/bece_progress_repository.dart';
import 'package:flutter_sarpongoy_twelve/features/sidebar/controller/sidebar_controller.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class PracticeController extends GetxController {
  final AudioPlayer _player = AudioPlayer();
  final ProgressRepository _progressRepo = Get.find<ProgressRepository>();
  bool isBece = false;

  late PracticeModel model;
  late Lesson lesson;
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

  // Question Flow State
  final RxInt currentQuestionIndex = 0.obs;
  final RxBool showBanner = false.obs;
  final RxBool showScenario = false.obs;
  final RxBool showAnswer = false.obs;
  final RxBool showExplanation = false.obs;
  final RxBool showNextButton = false.obs;
  final RxBool showViewAnswerButton = false.obs;

  List<PracticeQuestion> get questions => model.questions;

  @override
  void onInit() {
    super.onInit();
  }

  void initData(
    Lesson les, {
    String? course,
    String? strand,
    String? subStrand,
    String? number,
    String? grade,
  }) {
    lesson = les;
    model = les.practice;
    courseName = course;
    strandName = strand;
    subStrandName = subStrand;
    lessonNumber = number;
    gradeName = grade;
    startPracticeSequence();
  }

  Future<void> startPracticeSequence() async {
    // For BECE activities, skip audio and go directly to questions
    if (isBece) {
      showBanner.value = false;
      try {
        final beceRepo = Get.find<BeceProgressRepository>();
        final progress = await beceRepo.getProgress(
          courseName: courseName ?? "",
          strandName: strandName ?? "",
          subStrandName: subStrandName ?? "",
          gradeName: gradeName ?? "",
          activityType: 'theory',
        );
        if (progress != null && progress.lastQuestionIndex != null) {
          if (progress.lastQuestionIndex! < questions.length) {
            currentQuestionIndex.value = progress.lastQuestionIndex!;
          }
        }
      } catch (e) {
        debugPrint("Error loading BECE theory progress: $e");
      }
      await startQuestionFlow();
      return;
    }

    await loadAudio(model.audioPath);

    showBanner.value = true;
    _player.play();
  }

  Future<void> saveBeceProgress() async {
    if (!isBece) return;
    try {
      final beceRepo = Get.find<BeceProgressRepository>();
      final progress = BeceProgress(
        courseName: courseName ?? "",
        strandName: strandName ?? "",
        subStrandName: subStrandName ?? "",
        gradeName: gradeName ?? "",
        activityType: 'theory',
        totalQuestions: questions.length,
        lastQuestionIndex: currentQuestionIndex.value,
        doneDate: DateTime.now(),
      );
      await beceRepo.saveProgress(progress);
    } catch (e) {
      debugPrint("Error saving BECE theory progress: $e");
    }
  }

  Future<void> loadAudio(String assetPath) async {
    try {
      await _player.setAsset(assetPath);

      _player.durationStream.listen((d) {
        duration.value = d ?? Duration.zero;
      });

      _player.positionStream.listen((p) {
        position.value = p;
      });

      _player.playerStateStream.listen((state) {
        isPlaying.value = state.playing;

        if (state.processingState == ProcessingState.completed) {
          if (!isLooping.value) {
            showBanner.value = false;
            _player.pause();
            _player.seek(Duration.zero);
            startQuestionFlow();
          }
        }
      });
    } catch (e) {
      debugPrint("Error loading audio ($assetPath): $e");
    }
  }

  Future<void> startQuestionFlow() async {
    showScenario.value = false;
    showAnswer.value = false;
    showExplanation.value = false;
    showNextButton.value = false;
    showViewAnswerButton.value = false;

    await Future.delayed(const Duration(milliseconds: 500));
    showScenario.value = true;

    await Future.delayed(const Duration(milliseconds: 500));
    showViewAnswerButton.value = true;
  }

  void revealAnswer() {
    showViewAnswerButton.value = false;
    showAnswer.value = true;
    showExplanation.value = true;
    showNextButton.value = true;
  }

  Future<void> nextQuestion() async {
    if (currentQuestionIndex.value < questions.length - 1) {
      currentQuestionIndex.value++;
      await saveBeceProgress();
      startQuestionFlow();
    } else {
      if (isBece) {
        final beceRepo = Get.find<BeceProgressRepository>();
        final progress = BeceProgress(
          courseName: courseName ?? "",
          strandName: strandName ?? "",
          subStrandName: subStrandName ?? "",
          gradeName: gradeName ?? "",
          activityType: 'theory',
          totalQuestions: questions.length,
          lastQuestionIndex: questions.length,
          doneDate: DateTime.now(),
        );

        await beceRepo.saveProgress(progress);
        Get.find<SidebarController>().loadActualProgress();

        Get.back();
      } else {
        // Save practice progress
        final progress = ActivityProgress(
          lessonId: lesson.topic,
          courseName: courseName,
          strandName: strandName,
          subStrandName: subStrandName,
          lessonNumber: lessonNumber,
          gradeName: gradeName,
          activityType: 'guided_practice',
          subActivity: 'completion',
          isCompleted: true,
          lastUpdated: DateTime.now(),
        );
        await _progressRepo.saveProgress(progress);
        Get.find<SidebarController>().loadActualProgress();

        Get.snackbar(
          "Complete",
          "You have finished all practice scenarios.",
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );

        await Future.delayed(const Duration(seconds: 2));
        Get.to(() => IndependentQuizScreen(lesson: lesson));
      }
    }
  }

  void previousQuestion() async {
    if (currentQuestionIndex.value > 0) {
      currentQuestionIndex.value--;
      await saveBeceProgress();
      startQuestionFlow();
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

  void skip(int seconds) {
    final newPosition = position.value + Duration(seconds: seconds);
    if (newPosition < Duration.zero) {
      _player.seek(Duration.zero);
    } else if (newPosition > duration.value) {
      _player.seek(duration.value);
    } else {
      _player.seek(newPosition);
    }
  }

  void restart() async {
    await _player.seek(Duration.zero);
    if (!isPlaying.value) {
      await _player.play();
    }
  }

  void toggleLoop() {
    isLooping.value = !isLooping.value;
    _player.setLoopMode(isLooping.value ? LoopMode.one : LoopMode.off);
  }

  void toggleShuffle() {
    isShuffled.value = !isShuffled.value;
    if (isShuffled.value) {
      Get.snackbar(
        'Shuffle Active',
        'Shuffle mode is now on',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 1),
      );
    }
  }

  void seek(Duration pos) {
    _player.seek(pos);
  }

  String formatTime(Duration d) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final minutes = twoDigits(d.inMinutes.remainder(60));
    final seconds = twoDigits(d.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  void onClose() {
    _player.dispose();
    try {
      Get.find<SidebarController>().loadActualProgress();
    } catch (_) {}
    super.onClose();
  }
}
