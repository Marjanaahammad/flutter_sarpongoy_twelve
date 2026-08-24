import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/sidebar/controller/sidebar_controller.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/independent_practice_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/progress_repository.dart';
import 'package:flutter_sarpongoy_twelve/core/services/sync_service.dart';

class IndependentController extends GetxController {
  final AudioPlayer _player = AudioPlayer();
  final ProgressRepository _progressRepo = Get.find<ProgressRepository>();

  final Rx<Duration> duration = Duration.zero.obs;
  final Rx<Duration> position = Duration.zero.obs;
  final RxBool isPlaying = false.obs;
  final RxBool isLooping = false.obs;

  final RxBool showBanner = false.obs;
  final RxBool showQuiz = false.obs;
  final RxInt currentQuestionIndex = 0.obs;
  final RxInt selectedOptionIndex = (-1).obs;
  final RxBool showDifficulty = false.obs;
  final RxBool showExplanation = false.obs;
  final RxBool showNextButton = false.obs;
  final RxInt correctAnswersCount = 0.obs;
  final RxBool showFinalResults = false.obs;

  // New UI Overhaul states
  final RxBool showCheckButton = false.obs;
  final RxBool isChecked = false.obs;
  final RxBool isCorrectState = false.obs;
  final RxBool isForcedCorrect = false.obs;
  final RxBool isSecondFailPending = false.obs;
  final RxBool isRevealState = false.obs;
  final RxList<int> incorrectOptionIndices = <int>[].obs;

  late IndependentPracticeModel model;
  late String lessonId;
  String? courseName;
  String? strandName;
  String? subStrandName;
  String? lessonNumber;
  String? gradeName;

  List<IndependentPracticeQuestion> get questions => model.questions;

  @override
  void onInit() {
    super.onInit();
  }

  void initData(
    IndependentPracticeModel data,
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
    startIndependentSequence();
  }

  @override
  void onClose() {
    _player.dispose();
    super.onClose();
  }

  Future<void> startIndependentSequence() async {
    await loadAudio(model.audioPath);
    showBanner.value = true;
    _player.play();
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
            startQuizFlow();
          }
        }
      });
    } catch (e) {
      debugPrint("Error loading independent audio: $e");
    }
  }

  void startQuizFlow() {
    showQuiz.value = true;
  }

  void selectOption(int index) {
    if (!isChecked.value) {
      selectedOptionIndex.value = index;
      showCheckButton.value = true;
    }
  }

  void checkAnswer() {
    if (selectedOptionIndex.value == -1) return;

    final question = questions[currentQuestionIndex.value];
    bool isCorrect = selectedOptionIndex.value == question.correctIndex;

    Get.dialog(
      Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            isCorrect ? Icons.check_circle_outlined : Icons.cancel_outlined,
            color: isCorrect ? Colors.green.shade700 : Colors.red.shade700,
            size: 200,
          ),
        ),
      ),
      barrierDismissible: false,
    );

    Future.delayed(const Duration(seconds: 2), () {
      if (Get.isDialogOpen ?? false) Get.back();

      if (isCorrect) {
        isChecked.value = true;
        showCheckButton.value = false;
        isCorrectState.value = true;
        correctAnswersCount.value++;
        showDifficulty.value = true;
        showExplanation.value = true;
        showNextButton.value = true;
      } else {
        isChecked.value = true;
        showCheckButton.value = false;
        isCorrectState.value = false;

        if (incorrectOptionIndices.length == 1) {
          isSecondFailPending.value = true;
        }
      }
    });
  }

  void handleContinue() {
    isSecondFailPending.value = false;
    isRevealState.value = true;
    showNextButton.value = true;
    showDifficulty.value = true;
    showExplanation.value = true;
  }

  void tryAgain() {
    if (selectedOptionIndex.value != -1) {
      incorrectOptionIndices.add(selectedOptionIndex.value);
    }
    isChecked.value = false;
    isCorrectState.value = false;
    selectedOptionIndex.value = -1;
    showCheckButton.value = false;
  }

  void nextQuestion() {
    if (currentQuestionIndex.value < questions.length - 1) {
      currentQuestionIndex.value++;
      resetQuestionState();
    } else {
      _saveFinalProgress();
      showFinalResults.value = true;
    }
  }

  Future<void> _saveFinalProgress() async {
    // Fetch existing progress to preserve original score
    final existingProgress = await _progressRepo.getSpecificProgress(
      lessonId,
      'independent',
      'final_score',
    );

    final progress = ActivityProgress(
      lessonId: lessonId,
      courseName: courseName,
      strandName: strandName,
      subStrandName: subStrandName,
      lessonNumber: lessonNumber,
      gradeName: gradeName,
      activityType: 'independent',
      subActivity: 'final_score',
      isCompleted: true,
      score: correctAnswersCount.value,
      originalScore:
          existingProgress?.originalScore ?? correctAnswersCount.value,
      totalQuestions: questions.length,
      lastUpdated: DateTime.now(),
    );
    await _progressRepo.saveProgress(progress);
    Get.find<SidebarController>().loadActualProgress();
    Get.find<SyncService>().triggerSync();
  }

  void previousQuestion() {
    if (currentQuestionIndex.value > 0) {
      currentQuestionIndex.value--;
      resetQuestionState();
    }
  }

  void resetQuestionState() {
    selectedOptionIndex.value = -1;
    showDifficulty.value = false;
    showExplanation.value = false;
    showNextButton.value = false;
    isChecked.value = false;
    showCheckButton.value = false;
    isCorrectState.value = false;
    isForcedCorrect.value = false;
    isSecondFailPending.value = false;
    isRevealState.value = false;
    incorrectOptionIndices.clear();
  }

  String getFeedbackMessage() {
    int score = correctAnswersCount.value;
    if (score == 4) {
      return "Excellent! You are a master communicator.";
    } else if (score >= 2) {
      return "Good job! You understand the basics, but keep practicing.";
    } else {
      return "Don't worry! Communication takes practice. Try the lesson again!";
    }
  }

  void playPause() {
    if (isPlaying.value) {
      _player.pause();
    } else {
      _player.play();
    }
  }
}
