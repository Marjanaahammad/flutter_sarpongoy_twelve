class UpdateProfileRequestModel {
  final String url;

  UpdateProfileRequestModel({
    required this.url,
  });

  factory UpdateProfileRequestModel.fromJson(Map<String, dynamic> json) {
    return UpdateProfileRequestModel(
      url: json['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "url": url,
    };
  }
}