import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/sidebar/controller/sidebar_controller.dart';
import 'package:get/get.dart';

class SubjectGridScreen extends StatelessWidget {
  const SubjectGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SidebarController sidebarController = Get.find<SidebarController>();

    return GridView.builder(
      itemCount: sidebarController.courses.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 24,
        childAspectRatio: 306 / 224,
      ),
      itemBuilder: (context, index) {
        final course = sidebarController.courses[index];
        return GestureDetector(
          onTap: () => sidebarController.selectCourse(course),
          child: Container(
            decoration: BoxDecoration(
              color: course.color,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(course.image, height: 100),
                const SizedBox(height: 12),
                Text(
                  course.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: course.textColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
