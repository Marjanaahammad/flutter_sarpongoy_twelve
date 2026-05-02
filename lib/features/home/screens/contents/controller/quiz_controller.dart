import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/services/sync_service.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/quiz_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/progress_repository.dart';
import 'package:flutter_sarpongoy_twelve/features/sidebar/controller/sidebar_controller.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class QuizController extends GetxController {
  final AudioPlayer _player = AudioPlayer();
  final ProgressRepository _progressRepo = Get.find<ProgressRepository>();

  late QuizModel model;
  late String lessonId;
  String? courseName;
  String? strandName;
  String? subStrandName;
  String? lessonNumber;
  String? gradeName;

  final RxBool showBanner = true.obs;
  final RxBool showQuiz = false.obs;
  final RxInt currentQuestionIndex = 0.obs;
  final RxInt selectedOptionIndex = (-1).obs;
  final RxBool showDifficulty = false.obs;
  final RxBool showExplanation = false.obs;
  final RxBool showNextButton = false.obs;
  final RxInt correctAnswersCount = 0.obs;
  final RxBool showFinalResults = false.obs;

  // Track the user selected option for each question to process results later
  final RxMap<int, int> userAnswers = <int, int>{}.obs;

  List<QuizQuestion> get questions => model.questions;

  @override
  void onInit() {
    super.onInit();
  }

  void initData(
    QuizModel data,
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
    _startQuizFlow();
  }

  Future<void> _startQuizFlow() async {
    try {
      await _player.setAsset(model.audioPath);

      _player.playerStateStream.listen((state) {
        if (state.processingState == ProcessingState.completed) {
          showBanner.value = false;
          showQuiz.value = true;
          _player.stop();
        }
      });

      await _player.play();
    } catch (e) {
      debugPrint("Error playing quiz audio: $e");
      Future.delayed(const Duration(seconds: 3), () {
        if (showBanner.value) {
          showBanner.value = false;
          showQuiz.value = true;
        }
      });
    }
  }

  void selectOption(int index) {
    selectedOptionIndex.value = index;
    userAnswers[currentQuestionIndex.value] = index;
    showNextButton.value = true;
  }

  void nextQuestion() {
    if (selectedOptionIndex.value != -1) {
      userAnswers[currentQuestionIndex.value] = selectedOptionIndex.value;
    }

    if (currentQuestionIndex.value < questions.length - 1) {
      currentQuestionIndex.value++;
      resetQuestionState();
    } else {
      _calculateFinalScore();
      showFinalResults.value = true;
    }
  }

  void previousQuestion() {
    if (currentQuestionIndex.value > 0) {
      currentQuestionIndex.value--;
      resetQuestionState();
    }
  }

  void resetQuestionState() {
    if (userAnswers.containsKey(currentQuestionIndex.value)) {
      selectedOptionIndex.value = userAnswers[currentQuestionIndex.value]!;
      showNextButton.value = true;
    } else {
      selectedOptionIndex.value = -1;
      showNextButton.value = false;
    }

    showDifficulty.value = false;
    showExplanation.value = false;
  }

  void _calculateFinalScore() async {
    int correct = 0;
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i] == questions[i].correctIndex) {
        correct++;
      }
    }
    correctAnswersCount.value = correct;

    // Fetch existing progress to preserve original score
    final existingProgress = await _progressRepo.getSpecificProgress(
      lessonId,
      'quiz',
      'final_score',
    );

    // Save progress to database
    final progress = ActivityProgress(
      lessonId: lessonId,
      courseName: courseName,
      strandName: strandName,
      subStrandName: subStrandName,
      lessonNumber: lessonNumber,
      gradeName: gradeName,
      activityType: 'quiz',
      subActivity: 'final_score',
      isCompleted: true,
      score: correct,
      originalScore: existingProgress?.originalScore ?? correct,
      totalQuestions: questions.length,
      lastUpdated: DateTime.now(),
    );
    await _progressRepo.saveProgress(progress);
    Get.find<SidebarController>().loadActualProgress();
    Get.find<SyncService>().triggerSync();
  }

  String getFeedbackMessage() {
    int score = correctAnswersCount.value;
    if (score >= 8) {
      return "Excellent! You are a master communicator. You know exactly how to behave and speak in any Ghanaian setting.";
    } else if (score >= 5) {
      return "Good job! You understand the basics, but try to pay more attention to the difference between nouns and verbs in voice stress.";
    } else {
      return "Don't worry! Communication takes practice. Focus on when to be formal and how to use eye contact. Try the lesson again!";
    }
  }

  @override
  void onClose() {
    _player.dispose();
    super.onClose();
  }
}
