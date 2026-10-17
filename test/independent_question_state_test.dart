import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/model/independent_question_state.dart';

void main() {
  test('rechecking two of four questions never adds extra points', () {
    final states = List.generate(4, (_) => IndependentQuestionState());
    for (final state in states) {
      state.select(0);
      state.check(0);
    }
    for (final state in states.take(2)) {
      expect(state.selectedOption, 0);
      expect(state.checked, isTrue);
      state.select(0);
      expect(state.check(0), isFalse);
      // Change to another option and back, then check the same question again.
      state.select(1);
      expect(state.earnsPoint, isFalse);
      state.select(0);
      state.check(0);
    }
    expect(states.where((s) => s.earnsPoint).length, 4);
  });

  test('replacement clears checked feedback until checked again', () {
    final state = IndependentQuestionState();
    state.select(0);
    state.check(0);
    state.select(1);
    expect(state.selectedOption, 1);
    expect(state.checked, isFalse);
    expect(state.correct, isFalse);
    expect(state.canContinue, isFalse);
    expect(state.earnsPoint, isFalse);
    state.check(0);
    expect(state.wrongAttempts, 1);
    expect(state.earnsPoint, isFalse);
  });

  test(
      'first wrong answer retains retry and second correct answer earns a point',
      () {
    final state = IndependentQuestionState();
    state.select(1);
    state.check(0);
    state.select(0); // Must use Try Again after an incorrect check.
    expect(state.selectedOption, 1);
    state.retry();
    expect(state.incorrectOptions, [1]);
    expect(state.wrongAttempts, 1);
    state.select(0);
    state.check(0);
    expect(state.earnsPoint, isTrue);
    expect(state.canContinue, isTrue);
  });

  test('two failures require reveal and revisiting cannot award a point', () {
    final state = IndependentQuestionState();
    state.select(1);
    state.check(0);
    state.retry();
    state.select(2);
    state.check(0);
    expect(state.secondFailPending, isTrue);
    expect(state.canContinue, isFalse);
    state.retry();
    expect(state.wrongAttempts, 2);
    state.reveal();
    expect(state.revealed, isTrue);
    expect(state.canContinue, isTrue);
    state.select(0);
    expect(state.check(0), isFalse);
    expect(state.earnsPoint, isFalse);
    expect(state.revealed, isTrue);
  });

  test('a new attempt starts with no answers, failures or reveal state', () {
    final state = IndependentQuestionState();
    expect(state.selectedOption, -1);
    expect(state.wrongAttempts, 0);
    expect(state.revealed, isFalse);
    expect(state.earnsPoint, isFalse);
  });
}
