class HelpSupportRequestModel {
  final String subject;
  final String description;

  HelpSupportRequestModel({
    required this.subject,
    required this.description,
  });

  factory HelpSupportRequestModel.fromJson(Map<String, dynamic> json) {
    return HelpSupportRequestModel(
      subject: json['subject'] ?? '',
      description: json['description'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "subject": subject,
      "description": description,
    };
  }
}