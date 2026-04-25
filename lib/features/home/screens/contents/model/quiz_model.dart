class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String difficulty;
  final String explanation;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.difficulty,
    required this.explanation,
  });
}

class QuizModel {
  final String audioPath;
  final List<QuizQuestion> questions;

  QuizModel({
    required this.audioPath,
    required this.questions,
  });
}
