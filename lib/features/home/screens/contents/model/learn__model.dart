class LearnPart {
  final String imagePath;
  final String audioPath;
  final String? videoPath;

  LearnPart({
    required this.imagePath,
    required this.audioPath,
    this.videoPath,
  });
}

class LearnModel {
  final List<LearnPart> parts;

  LearnModel({required this.parts});
}
