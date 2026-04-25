import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../sidebar/controller/sidebar_controller.dart';
import '../../home/models/course_model.dart';
import '../../home/models/strand_model.dart';

class SubjectDetailsScreen extends StatelessWidget {
  final String subjectTitle;
  final String gradeLevel;
  final Course course;
  final Color subjectColor;

  const SubjectDetailsScreen({
    super.key,
    required this.subjectTitle,
    required this.gradeLevel,
    required this.course,
    required this.subjectColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F7),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 40), // Spacing for balance
                  Text(
                    subjectTitle.replaceAll("\n", " "),
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: subjectColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Grade Level Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'GRADE LEVEL',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF666666),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Obx(() {
                    final sidebarController = Get.find<SidebarController>();
                    return DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        value: sidebarController.selectedGrade.value,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            sidebarController.selectedGrade.value = newValue;
                          }
                        },
                        items: <String>['JHS 1', 'JHS 2', 'JHS 3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    );
                  }),
                  const SizedBox(height: 16),
                  const Divider(thickness: 1),
                ],
              ),
            ),

            // Content List
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Obx(() {
                  final sidebarController = Get.find<SidebarController>();
                  // Find the current course by matching subjectTitle
                  final currentCourse = sidebarController.courses.firstWhere(
                    (c) =>
                        c.title == course.title ||
                        c.title.contains(subjectTitle) ||
                        subjectTitle.contains(c.title),
                    orElse: () => course,
                  );

                  return ListView.builder(
                    key: ValueKey(sidebarController.selectedGrade.value),
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    itemCount:
                        currentCourse.strands.expand((s) => s.subStrands).length,
                    itemBuilder: (context, index) {
                      final allSubStrands = currentCourse.strands
                          .expand((s) => s.subStrands)
                          .toList();
                      final subStrand = allSubStrands[index];
                      return _buildSubStrandCard(subStrand);
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubStrandCard(SubStrand subStrand) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF19975E), width: 1.5),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subStrand.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subStrand.subtitle,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(height: 16),
          const Divider(thickness: 1),
          const SizedBox(height: 16),

          // Table Header
          Row(
            children: const [
              Expanded(
                flex: 1,
                child: Text(
                  'Lesson',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'Get Ready',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'Learn',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'Latest Practice Score',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'First Attempt Score',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'Latest Quiz Score',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'First Attempt Score',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(thickness: 1),

          // Lesson Rows
          ...subStrand.lessons.asMap().entries.map((entry) {
            final lessonIndex = entry.key + 1;
            final lesson = entry.value;
            return _buildLessonRow(lessonIndex.toString(), lesson);
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildLessonRow(String index, Lesson lesson) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              // Lesson Number
              Expanded(
                flex: 1,
                child: Text(
                  index,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
              ),

              // Get Ready (Topic Name)
              Expanded(
                flex: 2,
                child: Text(
                  lesson.topic,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: lesson.getReadyDoneDate != null
                        ? const Color(0xFFF97316)
                        : const Color(0xFF999999),
                  ),
                ),
              ),

              // Learn (Topic Name)
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    lesson.topic,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: lesson.learnDoneDate != null
                          ? const Color(0xFF0D9488)
                          : const Color(0xFF999999),
                    ),
                  ),
                ),
              ),

              // Practice (Score)
              Expanded(
                flex: 2,
                child: Text(
                  lesson.practiceScore ?? "-",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: lesson.practiceScore != null
                        ? const Color(0xFFFF596E)
                        : const Color(0xFF999999),
                  ),
                ),
              ),

              // Practice Original (Score)
              Expanded(
                flex: 2,
                child: Text(
                  lesson.practiceOriginalScore ?? "-",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: lesson.practiceOriginalScore != null
                        ? const Color(0xFFFF596E)
                        : const Color(0xFF999999),
                  ),
                ),
              ),

              // Quiz (Score)
              Expanded(
                flex: 2,
                child: Text(
                  lesson.quizScore ?? "-",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: lesson.quizScore != null
                        ? const Color(0xFF8B5CF6)
                        : const Color(0xFF999999),
                  ),
                ),
              ),

              // Quiz Original (Score)
              Expanded(
                flex: 2,
                child: Text(
                  lesson.quizOriginalScore ?? "-",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: lesson.quizOriginalScore != null
                        ? const Color(0xFF8B5CF6)
                        : const Color(0xFF999999),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(thickness: 1, height: 1),
      ],
    );
  }
}
