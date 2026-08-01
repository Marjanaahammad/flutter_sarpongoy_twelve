class PracticeQuestion {
  final String scenario;
  final String answer;
  final String explanation;

  /// Optional 3-column table shown below the scenario text in BECE mode.
  /// Each entry is a list of exactly 3 strings: [col1, col2, col3].
  final List<List<String>>? tableData;

  /// Optional header row for [tableData].
  final List<String>? tableHeaders;

  /// Optional 3-column table shown inside the answer section in BECE mode.
  final List<List<String>>? answerTableData;

  /// Optional header row for [answerTableData].
  final List<String>? answerTableHeaders;

  PracticeQuestion({
    required this.scenario,
    required this.answer,
    required this.explanation,
    this.tableData,
    this.tableHeaders,
    this.answerTableData,
    this.answerTableHeaders,
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
