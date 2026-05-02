class PracticeQuestion {
  final String scenario;
  final String answer;
  final String explanation;

  PracticeQuestion({
    required this.scenario,
    required this.answer,
    required this.explanation,
  });
}

class PracticeModel {
  final String audioPath;
  final List<PracticeQuestion> questions;

  PracticeModel({
    required this.audioPath,
    required this.questions,
  });
}
