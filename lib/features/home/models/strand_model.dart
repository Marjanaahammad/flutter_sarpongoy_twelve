import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/get_ready_model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/learn__model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/practice_model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/quiz_model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/independent_practice_model.dart';

class Lesson {
  final String title;
  final String topic;
  final String? doneDate;
  final String? score;
  final bool isCompleted;
  final String? courseName;
  final String? strandName;
  final String? subStrandName;
  final String? lessonNumber;
  final String? gradeName;

  // Activity-specific progress
  final String? getReadyDoneDate;
  final String? learnDoneDate;
  final String? practiceDoneDate;
  final String? practiceScore;
  final String? practiceOriginalScore;
  final String? quizDoneDate;
  final String? quizScore;
  final String? quizOriginalScore;
  final bool isLocked;

  final GetReadyModel getReady;
  final LearnModel learn;
  final PracticeModel practice;
  final IndependentPracticeModel independentPractice;
  final QuizModel quiz;

  Lesson({
    required this.title,
    required this.topic,
    this.doneDate,
    this.score,
    this.isCompleted = false,
    this.courseName,
    this.strandName,
    this.subStrandName,
    this.lessonNumber,
    this.gradeName,
    this.getReadyDoneDate,
    this.learnDoneDate,
    this.practiceDoneDate,
    this.practiceScore,
    this.practiceOriginalScore,
    this.quizDoneDate,
    this.quizScore,
    this.quizOriginalScore,
    this.isLocked = false,
    required this.getReady,
    required this.learn,
    required this.practice,
    required this.independentPractice,
    required this.quiz,
  });

  Lesson copyWith({
    String? title,
    String? topic,
    String? doneDate,
    String? score,
    bool? isCompleted,
    String? courseName,
    String? strandName,
    String? subStrandName,
    String? lessonNumber,
    String? gradeName,
    String? getReadyDoneDate,
    String? learnDoneDate,
    String? practiceDoneDate,
    String? practiceScore,
    String? practiceOriginalScore,
    String? quizDoneDate,
    String? quizScore,
    String? quizOriginalScore,
    bool? isLocked,
    GetReadyModel? getReady,
    LearnModel? learn,
    PracticeModel? practice,
    IndependentPracticeModel? independentPractice,
    QuizModel? quiz,
  }) {
    return Lesson(
      title: title ?? this.title,
      topic: topic ?? this.topic,
      doneDate: doneDate ?? this.doneDate,
      score: score ?? this.score,
      isCompleted: isCompleted ?? this.isCompleted,
      courseName: courseName ?? this.courseName,
      strandName: strandName ?? this.strandName,
      subStrandName: subStrandName ?? this.subStrandName,
      lessonNumber: lessonNumber ?? this.lessonNumber,
      gradeName: gradeName ?? this.gradeName,
      getReadyDoneDate: getReadyDoneDate ?? this.getReadyDoneDate,
      learnDoneDate: learnDoneDate ?? this.learnDoneDate,
      practiceDoneDate: practiceDoneDate ?? this.practiceDoneDate,
      practiceScore: practiceScore ?? this.practiceScore,
      practiceOriginalScore:
          practiceOriginalScore ?? this.practiceOriginalScore,
      quizDoneDate: quizDoneDate ?? this.quizDoneDate,
      quizScore: quizScore ?? this.quizScore,
      quizOriginalScore: quizOriginalScore ?? this.quizOriginalScore,
      isLocked: isLocked ?? this.isLocked,
      getReady: getReady ?? this.getReady,
      learn: learn ?? this.learn,
      practice: practice ?? this.practice,
      independentPractice: independentPractice ?? this.independentPractice,
      quiz: quiz ?? this.quiz,
    );
  }
}

class SubStrand {
  final String title;
  final String subtitle;
  final List<Lesson> lessons;

  SubStrand({
    required this.title,
    required this.subtitle,
    required this.lessons,
  });

  SubStrand copyWith({
    String? title,
    String? subtitle,
    List<Lesson>? lessons,
  }) {
    return SubStrand(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      lessons: lessons ?? this.lessons,
    );
  }
}

class Strand {
  final String title;
  final String subtitle;
  final bool isCompleted;
  final bool isLocked;
  final List<SubStrand> subStrands;

  Strand({
    required this.title,
    required this.subtitle,
    this.isCompleted = false,
    this.isLocked = false,
    required this.subStrands,
  });

  Strand copyWith({
    String? title,
    String? subtitle,
    bool? isCompleted,
    bool? isLocked,
    List<SubStrand>? subStrands,
  }) {
    return Strand(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      isCompleted: isCompleted ?? this.isCompleted,
      isLocked: isLocked ?? this.isLocked,
      subStrands: subStrands ?? this.subStrands,
    );
  }
}
