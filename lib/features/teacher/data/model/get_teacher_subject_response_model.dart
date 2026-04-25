class SubjectListResponseModel {
  final List<SubjectModel>? data;

  SubjectListResponseModel({this.data});

  factory SubjectListResponseModel.fromJson(List<dynamic> json) {
    return SubjectListResponseModel(
      data: json.map((e) => SubjectModel.fromJson(e)).toList(),
    );
  }

  List<Map<String, dynamic>> toJson() {
    return data?.map((e) => e.toJson()).toList() ?? [];
  }
}

class SubjectModel {
  final String? id;
  final String? name;
  final String? description;
  final List<String>? gradeLevels;

  SubjectModel({this.id, this.name, this.description, this.gradeLevels});

  factory SubjectModel.fromJson(Map<String, dynamic> json) {
    return SubjectModel(
      id: json['_id'],
      name: json['name'],
      description: json['description'],
      gradeLevels: json['gradeLevels'] != null
          ? List<String>.from(json['gradeLevels'])
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'description': description,
      'gradeLevels': gradeLevels,
    };
  }
}
