import 'package:flutter/material.dart';

import 'package:flutter_sarpongoy_twelve/features/home/models/strand_model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/widgets/chapter_overview.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/widgets/hook.dart';
import 'package:get/get.dart';
import 'controller/get_ready_controller.dart';

class GetReadyContentScreen extends StatelessWidget {
  final Lesson lesson;
  final String? courseName;
  final String? strandName;
  final String? subStrandName;
  final String? lessonNumber;
  final String? gradeName;

  const GetReadyContentScreen({
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
    Get.delete<GetReadyController>();
    final controller = Get.put(GetReadyController()
      ..initData(
        lesson.getReady,
        lesson.topic,
        course: courseName,
        strand: strandName,
        subStrand: subStrandName,
        number: lessonNumber,
        grade: gradeName,
      ));

    return Scaffold(
      backgroundColor: Color(0xFFFFF1DC),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/Copilot_20260315_115525.png"),
        //     // your image
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(() {
                        if (controller.showHook.value) {
                          return HookContent(controller: controller);
                        } else {
                          return ChapterOverviewContent(controller: controller);
                        }
                      }),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
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
