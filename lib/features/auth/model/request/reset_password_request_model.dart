class ResetPasswordRequestModel {
  final String resetToken;
  final String newPassword;
  final String confirmPassword;

  ResetPasswordRequestModel({
    required this.resetToken,
    required this.newPassword,
    required this.confirmPassword,
  });

  /// Convert object to JSON
  Map<String, dynamic> toJson() {
    return {
      "resetToken": resetToken,
      "newPassword": newPassword,
      "confirmPassword": confirmPassword,
    };
  }

  /// Optional: fromJson (if ever needed)
  factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) {
    return ResetPasswordRequestModel(
      resetToken: json['resetToken'] ?? '',
      newPassword: json['newPassword'] ?? '',
      confirmPassword: json['confirmPassword'] ?? '',
    );
  }
}