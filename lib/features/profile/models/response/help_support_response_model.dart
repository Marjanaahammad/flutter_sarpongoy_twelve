class HelpSupportResponseModel {
  final String id;
  final String user;
  final String role;
  final String userId;
  final String subject;
  final String description;
  final String status;
  final String resolutionNote;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  HelpSupportResponseModel({
    required this.id,
    required this.user,
    required this.role,
    required this.userId,
    required this.subject,
    required this.description,
    required this.status,
    required this.resolutionNote,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory HelpSupportResponseModel.fromJson(Map<String, dynamic> json) {
    return HelpSupportResponseModel(
      id: json['_id'] ?? '',
      user: json['user'] ?? '',
      role: json['role'] ?? '',
      userId: json['userId'] ?? '',
      subject: json['subject'] ?? '',
      description: json['description'] ?? '',
      status: json['status'] ?? '',
      resolutionNote: json['resolutionNote'] ?? '',
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      v: json['__v'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "user": user,
      "role": role,
      "userId": userId,
      "subject": subject,
      "description": description,
      "status": status,
      "resolutionNote": resolutionNote,
      "createdAt": createdAt.toIso8601String(),
      "updatedAt": updatedAt.toIso8601String(),
      "__v": v,
    };
  }
}