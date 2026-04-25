class SecurityQuestionsRequestModel {
  final List<SecurityQuestion> securityQuestions;

  SecurityQuestionsRequestModel({required this.securityQuestions});

  Map<String, dynamic> toJson() {
    return {
      "securityQuestions": securityQuestions
          .map((question) => question.toJson())
          .toList(),
    };
  }
}

class SecurityQuestion {
  final String question;
  final String answer;

  SecurityQuestion({required this.question, required this.answer});

  Map<String, dynamic> toJson() {
    return {"question": question, "answer": answer};
  }
}
