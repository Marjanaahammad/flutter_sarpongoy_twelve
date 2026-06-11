import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/home/models/course_model.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/get_ready_content_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/contents/practice_content_screen.dart';
import 'package:get/get.dart';
import '../../profile/controller/profile_controller.dart';
import '../../profile/screens/profile_screen.dart';
import '../../sidebar/controller/sidebar_controller.dart';
import '../models/strand_model.dart';
import 'contents/learn_screen.dart';
import 'contents/quiz_screen.dart';

class StrandScreen extends StatelessWidget {
  const StrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SidebarController controller = Get.find<SidebarController>();

    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Obx(() {
          final course = controller.selectedCourse.value;
          final strandIndex = controller.selectedStrandIndex.value;
          if (course == null) return const SizedBox.shrink();
          final strand = course.strands[strandIndex];

          final query = controller.strandSearchText.value.toLowerCase();

          // Filter sub-strands and their lessons based on search query
          final filteredSubStrands = strand.subStrands
              .map((subStrand) {
                final matchingLessons = subStrand.lessons.where((lesson) {
                  return lesson.title.toLowerCase().contains(query) ||
                      lesson.topic.toLowerCase().contains(query);
                }).toList();

                if (matchingLessons.isNotEmpty ||
                    subStrand.title.toLowerCase().contains(query) ||
                    subStrand.subtitle.toLowerCase().contains(query)) {
                  bool subStrandMatches =
                      subStrand.title.toLowerCase().contains(query) ||
                          subStrand.subtitle.toLowerCase().contains(query);

                  return subStrand.copyWith(
                    lessons:
                        subStrandMatches ? subStrand.lessons : matchingLessons,
                  );
                }
                return null;
              })
              .whereType<SubStrand>()
              .toList();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(controller),
              _buildFilterBar(controller),
              Expanded(
                child: SingleChildScrollView(
                  key: ValueKey(controller.selectedStrandIndex.value),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (filteredSubStrands.isEmpty)
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 100),
                            child: Text(
                              "No lessons found matching your search.",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF777777),
                              ),
                            ),
                          ),
                        ),
                      // Render all filtered Sub-Strands
                      ...filteredSubStrands.map((subStrand) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                subStrand.title,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF161483),
                                ),
                              ),
                              Text(
                                subStrand.subtitle,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF777777),
                                ),
                              ),
                              const SizedBox(height: 24),
                              // Render all filtered Lessons in this Sub-Strand
                              ...subStrand.lessons.map((lesson) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFFDFDFDF),
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: _buildLessonSection(
                                        lesson,
                                        course,
                                        strand,
                                        subStrand,
                                        controller,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildHeader(SidebarController controller) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 30.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller.strandSearchController,
              cursorColor: const Color(0xFF6B6B6B),
              textInputAction: TextInputAction.next,
              style: const TextStyle(fontSize: 16),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color(0xFF6B6B6B),
                ),
                suffixIcon: Obx(() {
                  if (controller.strandSearchText.value.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return IconButton(
                    icon: const Icon(
                      Icons.clear_rounded,
                      color: Color(0xFF6B6B6B),
                    ),
                    onPressed: () {
                      controller.strandSearchController.clear();
                    },
                  );
                }),
                hintText: "Search here...",
                hintStyle: const TextStyle(
                  color: Color(0xFF6B6B6B),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(44),
                  borderSide: const BorderSide(
                    color: Color(0xFFDDDDDD),
                    width: 1.5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(44),
                  borderSide: const BorderSide(
                    color: Color(0xFFDDDDDD),
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(44),
                  borderSide: const BorderSide(
                    color: Color(0xFFDDDDDD),
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          GetBuilder<ProfileController>(
            init: Get.find<ProfileController>(),
            builder: (controller) {
              return Obx(() {
                final student = controller.userInfo.value?.student;
                return GestureDetector(
                  onTap: () {
                    Get.to(() => const ProfileScreen());
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: student?.picture.url != null &&
                            student!.picture.url.isNotEmpty
                        ? Image.network(
                            student.picture.url,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                              'assets/images/00f9997dc3c8cbb22e5eae2f0a40bcc0e9a215b6.jpg',
                              fit: BoxFit.contain,
                            ),
                          )
                        : Icon(Icons.person_outline_rounded),
                  ),
                );
              });
            },
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget _buildFilterBar(SidebarController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFF3F8E2),
          border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Grade",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF545454),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Obx(
                  () => Row(
                    children: [
                      _buildGradeChip(
                        "JHS1",
                        controller.selectedGrade.value == "JHS 1",
                        () {
                          controller.selectedGrade.value = "JHS 1";
                        },
                      ),
                      _buildGradeChip(
                        "JHS2",
                        controller.selectedGrade.value == "JHS 2",
                        () {
                          controller.selectedGrade.value = "JHS 2";
                        },
                      ),
                      _buildGradeChip(
                        "JHS3",
                        controller.selectedGrade.value == "JHS 3",
                        () {
                          controller.selectedGrade.value = "JHS 3";
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Subject",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF545454),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFF19975E)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Obx(
                    () => DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        value: controller.selectedCourse.value?.title,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: Colors.black,
                        ),
                        items: controller.courses.map((course) {
                          return DropdownMenuItem<String>(
                            value: course.title,
                            child: Text(
                              course.title.replaceAll("\n", " "),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newTitle) {
                          if (newTitle != null) {
                            final newCourse = controller.courses.firstWhere(
                              (c) => c.title == newTitle,
                            );
                            controller.selectCourse(newCourse);
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradeChip(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF019E2E) : Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: isSelected ? const Color(0xFF019E2E) : Colors.grey[300]!,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLessonSection(
    Lesson lesson,
    Course course,
    Strand strand,
    SubStrand subStrand,
    SidebarController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lesson.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFAB0000),
          ),
        ),
        Text(
          lesson.topic.toUpperCase(),
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF777777),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 20),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.2,
          children: [
            _buildActivityCard(
              "CHAPTER OVERVIEW",
              "Get Ready",
              lesson,
              const Color(0xFFFF7F00),
              const Color(0xFF098FD1),
              lesson.isLocked,
              () => Get.to(
                () => GetReadyContentScreen(
                  lesson: lesson,
                  courseName: course.title,
                  strandName: strand.subtitle,
                  subStrandName: subStrand.subtitle,
                  lessonNumber: lesson.title,
                  gradeName: controller.selectedGrade.value,
                ),
              ),
            ),
            _buildActivityCard(
              "TEACH",
              "Learn",
              lesson,
              const Color(0xFF28A2DF),
              const Color(0xFF098FD1),
              lesson.isLocked,
              () {
                Get.to(
                  () => LearnScreen(
                    lesson: lesson,
                    courseName: course.title,
                    strandName: strand.subtitle,
                    subStrandName: subStrand.subtitle,
                    lessonNumber: lesson.title,
                    gradeName: controller.selectedGrade.value,
                  ),
                );
              },
            ),
            _buildActivityCard(
              "COMPLETE GUIDED PRACTICE",
              "Practice",
              lesson,
              const Color(0xFFFE646F),
              const Color(0xFFE14D58),
              lesson.isLocked,
              () {
                Get.to(
                  () => PracticeContentScreen(
                    lesson: lesson,
                    courseName: course.title,
                    strandName: strand.subtitle,
                    subStrandName: subStrand.subtitle,
                    lessonNumber: lesson.title,
                    gradeName: controller.selectedGrade.value,
                  ),
                );
              },
            ),
            _buildActivityCard(
              "IMPROVE YOURSELF THROUGH QUIZ",
              "Quiz",
              lesson,
              const Color(0xFFA264FE),
              const Color(0xFF8B3EFF),
              lesson.isLocked,
              () {
                Get.to(
                  () => QuizScreen(
                    lesson: lesson,
                    courseName: course.title,
                    strandName: strand.subtitle,
                    subStrandName: subStrand.subtitle,
                    lessonNumber: lesson.title,
                    gradeName: controller.selectedGrade.value,
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget _buildActivityCard(
    String text,
    String type,
    Lesson lesson,
    Color color,
    Color borderColor,
    bool isLocked,
    VoidCallback onTap,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFFBFFF3),
        border: Border.all(color: Color(0xFFDADADA)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 112,
                    height: 33,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: isLocked ? Colors.grey : color,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: isLocked ? Colors.grey : borderColor,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        type,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.check_circle,
                    color: ((type == "Get Ready" &&
                                lesson.getReadyDoneDate != null) ||
                            (type == "Learn" && lesson.learnDoneDate != null) ||
                            (type == "Practice" &&
                                lesson.practiceDoneDate != null) ||
                            (type == "Quiz" && lesson.quizDoneDate != null)
                        ? const Color(0xFF019E2E)
                        : Colors.grey.shade300),
                    size: 25,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              if (type == "Get Ready" && lesson.getReadyDoneDate != null)
                _buildDoneRow(lesson.getReadyDoneDate!),
              if (type == "Learn" && lesson.learnDoneDate != null)
                _buildDoneRow(lesson.learnDoneDate!),
              if (type == "Practice" && lesson.practiceDoneDate != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDoneRow(lesson.practiceDoneDate!),
                    if (lesson.practiceOriginalScore != null)
                      Row(
                        children: [
                          Text(
                            "First Attempt Score : ",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            _formatScore(lesson.practiceOriginalScore),
                            style: const TextStyle(
                                fontSize: 15, color: Color(0xFF3E3C3C)),
                          ),
                        ],
                      ),
                    if (lesson.practiceScore != null)
                      Row(
                        children: [
                          Text(
                            "Latest Score : ",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            _formatScore(lesson.practiceScore),
                            style: const TextStyle(
                                fontSize: 15, color: Color(0xFF3E3C3C)),
                          ),
                        ],
                      ),
                  ],
                ),
              if (type == "Quiz" && lesson.quizDoneDate != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDoneRow(lesson.quizDoneDate!),
                    if (lesson.quizOriginalScore != null)
                      Row(
                        children: [
                          Text(
                            "First Attempt Score : ",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            _formatScore(lesson.quizOriginalScore),
                            style: const TextStyle(
                                fontSize: 15, color: Color(0xFF3E3C3C)),
                          ),
                        ],
                      ),
                    if (lesson.quizScore != null)
                      Row(
                        children: [
                          Text(
                            "Latest Score : ",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            _formatScore(lesson.quizScore),
                            style: const TextStyle(
                                fontSize: 15, color: Color(0xFF3E3C3C)),
                          ),
                        ],
                      ),
                  ],
                ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: _buildButton(
                  "Open Activity",
                  Colors.white,
                  onTap,
                  isPrimary: true,
                  isLocked: isLocked,
                ),
              ),
            ],
          ),
          if (isLocked)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Icon(Icons.lock, color: Color(0xFF161483), size: 30),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDoneRow(String date) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Done : ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      date,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3E3C3C),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _formatScore(String? scoreStr) {
    if (scoreStr == null) return "0%";
    if (scoreStr.contains('%')) return scoreStr;

    if (!scoreStr.contains('/')) return "0%";
    try {
      final parts = scoreStr.split('/');
      if (parts.length != 2) return "0%";
      final score = double.parse(parts[0]);
      final total = double.parse(parts[1]);
      if (total == 0) return "0%";
      final percentage = (score / total * 100).toInt();
      return "$percentage%";
    } catch (e) {
      return "0%";
    }
  }

  Widget _buildButton(
    String text,
    Color textColor,
    VoidCallback onTap, {
    required bool isPrimary,
    bool isLocked = false,
  }) {
    return GestureDetector(
      onTap: isLocked ? null : onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          gradient: isLocked
              ? const LinearGradient(
                  colors: [Color(0xFFBDBDBD), Color(0xFF9E9E9E)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : (isPrimary
                  ? const LinearGradient(
                      colors: [Color(0xFF004FB0), Color(0xFF1A077A)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : const LinearGradient(
                      colors: [Color(0xFF2E6DBA), Color(0xFF5845C1)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
              width: 16,
              child: Image.asset(
                'assets/images/activity.png',
                color: isLocked ? Colors.white54 : null,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: isLocked ? Colors.white70 : textColor,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
