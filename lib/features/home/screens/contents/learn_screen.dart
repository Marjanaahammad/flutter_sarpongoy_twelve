import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/home/models/strand_model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/widgets/learn_part_widget.dart';
import 'package:get/get.dart';
import 'controller/learn_controller.dart';

class LearnScreen extends StatelessWidget {
  final Lesson lesson;
  final String? courseName;
  final String? strandName;
  final String? subStrandName;
  final String? lessonNumber;
  final String? gradeName;

  const LearnScreen({
    super.key,
    required this.lesson,
    this.courseName,
    this.strandName,
    this.subStrandName,
    this.lessonNumber,
    this.gradeName,
  });

  @override
  Widget build(BuildContext context) {
    Get.delete<LearnController>();
    final controller = Get.put(LearnController()
      ..initData(
        lesson.learn,
        lesson.topic,
        course: courseName,
        strand: strandName,
        subStrand: subStrandName,
        number: lessonNumber,
        grade: gradeName,
      ));

    return Scaffold(
      backgroundColor: const Color(0xFFFFF1DC),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/Copilot_20260315_115525.png'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: SafeArea(
          child: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LearnPartWidget(controller: controller),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
