class SecurityQuestionMatchResponseModel {
  final int matched;
  final String resetToken;
  final String gradeLevel;

  SecurityQuestionMatchResponseModel({
    required this.matched,
    required this.resetToken,
    required this.gradeLevel,
  });

  factory SecurityQuestionMatchResponseModel.fromJson(
      Map<String, dynamic> json) {
    return SecurityQuestionMatchResponseModel(
      matched: json['matched'],
      resetToken: json['resetToken'],
      gradeLevel: json['gradeLevel'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "matched": matched,
      "resetToken": resetToken,
      "gradeLevel": gradeLevel,
    };
  }
}