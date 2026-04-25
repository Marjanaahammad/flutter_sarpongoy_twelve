class IndependentPracticeQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String difficulty;
  final String explanation;

  IndependentPracticeQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.difficulty,
    required this.explanation,
  });
}

class IndependentPracticeModel {
  final String audioPath;
  final List<IndependentPracticeQuestion> questions;

  IndependentPracticeModel({
    required this.audioPath,
    required this.questions,
  });
}
