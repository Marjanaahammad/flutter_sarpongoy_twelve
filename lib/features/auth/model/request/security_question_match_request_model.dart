class SecurityQuestionMatchRequestModel {
  final String userId;
  final List<SecurityAnswer> answers;

  SecurityQuestionMatchRequestModel({
    required this.userId,
    required this.answers,
  });

  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "answers": answers.map((e) => e.toJson()).toList(),
    };
  }
}

class SecurityAnswer {
  final String question;
  final String answer;

  SecurityAnswer({
    required this.question,
    required this.answer,
  });

  Map<String, dynamic> toJson() {
    return {
      "question": question,
      "answer": answer,
    };
  }
}