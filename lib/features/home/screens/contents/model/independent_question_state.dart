/// In-memory state for one question during a single independent quiz attempt.
class IndependentQuestionState {
  int selectedOption = -1;
  bool checked = false;
  bool correct = false;
  bool revealed = false;
  int wrongAttempts = 0;
  final List<int> incorrectOptions = [];

  bool get secondFailPending => wrongAttempts >= 2 && !revealed && !correct;
  bool get earnsPoint => checked && correct && !revealed;
  bool get canContinue => (checked && correct) || revealed;

  void select(int option) {
    if (revealed || secondFailPending || (checked && !correct)) return;
    if (selectedOption == option) return;
    selectedOption = option;
    checked = false;
    correct = false;
  }

  bool check(int correctOption) {
    if (selectedOption < 0 || checked || revealed || secondFailPending) {
      return false;
    }
    checked = true;
    correct = selectedOption == correctOption;
    if (!correct) wrongAttempts++;
    return true;
  }

  void retry() {
    if (!checked || correct || revealed || wrongAttempts >= 2) return;
    if (!incorrectOptions.contains(selectedOption)) {
      incorrectOptions.add(selectedOption);
    }
    selectedOption = -1;
    checked = false;
    correct = false;
  }

  void reveal() {
    if (secondFailPending) revealed = true;
  }
}
