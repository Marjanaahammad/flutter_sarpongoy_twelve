import 'package:flutter/material.dart';
import 'strand_model.dart';

class Course {
  final String title;
  final String image;
  final Color color;
  final Color textColor;
  final List<Strand> strands;

  Course({
    required this.title,
    required this.image,
    required this.color,
    required this.textColor,
    required this.strands,
  });

  Course copyWith({
    String? title,
    String? image,
    Color? color,
    Color? textColor,
    List<Strand>? strands,
  }) {
    return Course(
      title: title ?? this.title,
      image: image ?? this.image,
      color: color ?? this.color,
      textColor: textColor ?? this.textColor,
      strands: strands ?? this.strands,
    );
  }
}
