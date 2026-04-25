import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/sidebar_controller.dart';
import '../home/models/course_model.dart';
import '../home/models/strand_model.dart';

class CustomSidebar extends StatelessWidget {
  CustomSidebar({super.key});

  final SidebarController controller = Get.find<SidebarController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.selectedIndex.value == -1) {
        return _buildCourseSidebar();
      } else {
        return NavigationRail(
          //minWidth: 100,
          minExtendedWidth: 180,
          extended: true,
          backgroundColor: const Color(0xFFF3F8E2),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: controller.changeIndex,
          selectedLabelTextStyle: const TextStyle(
            color: Color(0xFF019E2E),
            fontWeight: FontWeight.w500,
          ),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
          useIndicator: false,

          leading: GestureDetector(
            onTap: controller.resetToHome,
            child: Image.asset(
              "assets/images/9bca85f6e3a12bfa0a6d41e8bac3ed3d65bda5e4.png",
              height: 150,
              width: 150,
            ),
          ),

          destinations: [
            NavigationRailDestination(
              icon: Image.asset(
                'assets/images/si_home-fill (1).png',
                width: 32,
                height: 32,
              ),
              selectedIcon: Image.asset(
                'assets/images/si_home-fill.png',
                width: 32,
                height: 32,
              ),
              label: const Text(
                "Home",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),

            NavigationRailDestination(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Image.asset(
                  'assets/images/progress_6208477 1.png',
                  width: 32,
                  height: 32,
                ),
              ),
              selectedIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Image.asset(
                  'assets/images/progress_6208477 1 (1).png',
                  width: 32,
                  height: 32,
                ),
              ),
              label: Text(
                "Progress",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),

            NavigationRailDestination(
              icon: Image.asset(
                'assets/images/user_456283 1.png',
                width: 32,
                height: 32,
              ),
              selectedIcon: Image.asset(
                'assets/images/user_456283 1 (1).png',
                width: 32,
                height: 32,
              ),
              label: Text(
                "Profile",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        );
      }
    });
  }

  Widget _buildCourseSidebar() {
    final course = controller.selectedCourse.value!;
    final strands = course.strands;

    return Container(
      width: 200,
      color: const Color(0xFFF3F8E2),
      child: Column(
        children: [
          _buildCourseHeader(course),
          Expanded(
            child: ListView.builder(
              itemCount: strands.length,
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemBuilder: (context, index) {
                return Obx(() {
                  final strand = strands[index];
                  final isSelected =
                      controller.selectedStrandIndex.value == index;
                  final isLast = index == strands.length - 1;

                  return IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Stepper Line and Icon
                        SizedBox(
                          width: 60,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.changeStrand(index);
                                },
                                child: _buildStatusIcon(strand),
                              ),
                              if (!isLast)
                                Expanded(
                                  child: Container(
                                    width: 4,
                                    color: Color(0xFFCDCDCD),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        // Label
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              controller.changeStrand(index);
                            },
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    strand.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: isSelected
                                          ? const Color(0xFF00A521)
                                          : Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    strand.subtitle,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: isSelected
                                          ? const Color(0xFF629D6E)
                                          : Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseHeader(Course course) {
    return GestureDetector(
      onTap: controller.resetToHome,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
        child: Container(
          width: double.infinity,
          //height: 109,
          margin: const EdgeInsets.only(top: 40, bottom: 20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(course.image, height: 70, width: 70),
              const SizedBox(height: 8),
              Text(
                course.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: course.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusIcon(Strand strand) {
    if (strand.isCompleted) {
      return Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: const Color(0xFF019E2E),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        child: const Icon(Icons.check, size: 20, color: Colors.white),
      );
    } else {
      return Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFF019E2E), width: 2),
        ),
        child: Center(
          child: Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xFF019E2E),
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
    }
  }
}
