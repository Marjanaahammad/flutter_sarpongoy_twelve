import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/screens/profile_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/sidebar/controller/sidebar_controller.dart';
import 'package:get/get.dart';

import 'subject_details_screen.dart';
import 'subject_chart_screen.dart';
import '../../home/models/course_model.dart';
import '../../profile/controller/profile_controller.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final SidebarController sidebarController = Get.find<SidebarController>();

    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          final totalComp = sidebarController.totalCompletion;
          final topSubjects = sidebarController.getTopTwoSubjects();

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: searchController,
                            cursorColor: const Color(0xFF6B6B6B),
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search_rounded,
                                color: Color(0xFF6B6B6B),
                              ),
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
                              final student =
                                  controller.userInfo.value?.student;
                              return GestureDetector(
                                onTap: () {
                                  Get.to(() => const ProfileScreen());
                                },
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                  clipBehavior: Clip.hardEdge,
                                  child:
                                      student?.picture.url != null &&
                                          student!.picture.url.isNotEmpty
                                      ? Image.network(
                                          student.picture.url,
                                          fit: BoxFit.contain,
                                          errorBuilder:
                                              (
                                                context,
                                                error,
                                                stackTrace,
                                              ) => Image.asset(
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

                        // const SizedBox(width: 12),
                        //
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: Image.asset(
                        //     'assets/images/mingcute_notification-fill.png',
                        //     width: 30,
                        //     height: 30,
                        //   ),
                        // ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),
                  const Text(
                    'My Progress',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Track your learning Progress',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 32),

                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F8E2),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 2,
                        color: const Color(0xFF00C358),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.5,
                        vertical: 25,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF3F8E2),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    width: 1,
                                    color: const Color(0xFF19975E),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    dropdownColor: Colors.white,
                                    value: sidebarController
                                        .selectedTotalCompletionGrade
                                        .value,
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                    onChanged: (String? newValue) {
                                      if (newValue != null) {
                                        sidebarController
                                            .selectedTotalCompletionGrade
                                            .value =
                                            newValue;
                                      }
                                    },
                                    items:
                                    <String>[
                                      'All',
                                      'JHS 1',
                                      'JHS 2',
                                      'JHS 3',

                                    ].map<DropdownMenuItem<String>>((
                                        String value,
                                        ) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              const Text(
                                'TOTAL \nCOMPLETION',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  height: 1.1,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '${(totalComp * 100).toInt()}%',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                width: constraints.maxWidth,
                                height: 16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xFFE6E6E6),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: constraints.maxWidth * totalComp,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color(0xFFC61C36),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Chart Area
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F8E2),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: const Color(0xFFE0E0E0),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF3F8E2),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        width: 1,
                                        color: const Color(0xFF19975E),
                                      ),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        dropdownColor: Colors.white,
                                        value: sidebarController
                                            .selectedChartGrade
                                            .value,
                                        icon: const Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                        ),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                        onChanged: (String? newValue) {
                                          if (newValue != null) {
                                            sidebarController
                                                .selectedChartGrade
                                                .value =
                                                newValue;
                                          }
                                        },
                                        items:
                                            <String>[
                                              'All',
                                              'JHS 1',
                                              'JHS 2',
                                              'JHS 3',
                                            ].map<DropdownMenuItem<String>>((
                                              String value,
                                            ) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Stack(
                                  children: [
                                    // Grid Lines and Y-Axis
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildGridLine("100%"),
                                        const Divider(
                                          height: 1,
                                          color: Color(0xFF999999),
                                        ),
                                        _buildGridLine("75%"),
                                        const Divider(
                                          height: 1,
                                          color: Color(0xFF999999),
                                        ),
                                        _buildGridLine("50%"),
                                        const Divider(
                                          height: 1,
                                          color: Color(0xFF999999),
                                        ),
                                        _buildGridLine("25%"),
                                        const Divider(
                                          height: 1,
                                          color: Color(0xFF999999),
                                        ),
                                        _buildGridLine("15%"),
                                        const Divider(
                                          height: 1,
                                          color: Color(0xFF999999),
                                        ),
                                        _buildGridLine("0%"),
                                      ],
                                    ),
                                    // Bars and Bubbles
                                    Positioned.fill(
                                      left: 60,
                                      right: 20,
                                      top: 0,
                                      bottom: 0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          _buildSubjectBar(
                                            sidebarController
                                                .getSubjectProgress("Math"),
                                            const Color(0xFF2563EB),
                                          ),
                                          _buildSubjectBar(
                                            sidebarController
                                                .getSubjectProgress("Science"),
                                            const Color(0xFF0D9488),
                                          ),
                                          _buildSubjectBar(
                                            sidebarController
                                                .getSubjectProgress("English"),
                                            const Color(0xFF7C3AED),
                                          ),
                                          _buildSubjectBar(
                                            sidebarController
                                                .getSubjectProgress(
                                                  "Social Studies",
                                                ),
                                            const Color(0xFFF97316),
                                          ),
                                          _buildSubjectBar(
                                            sidebarController
                                                .getSubjectProgress(
                                                  "Religious & Moral Education",
                                                ),
                                            const Color(0xFFEAB308),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              // Icons and Labels below the chart
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 50,
                                  right: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildSubjectLabel(
                                      "Math",
                                      const Color(0xFF2F80ED),
                                      'assets/images/math.png',
                                    ),
                                    _buildSubjectLabel(
                                      "Science",
                                      const Color(0xFF00C358),
                                      'assets/images/science.png',
                                    ),
                                    _buildSubjectLabel(
                                      "English",
                                      const Color(0xFF9B51E0),
                                      'assets/images/english.png',
                                    ),
                                    _buildSubjectLabel(
                                      "Social",
                                      const Color(0xFFF2994A),
                                      'assets/images/social.png',
                                    ),
                                    _buildSubjectLabel(
                                      "RME",
                                      const Color(0xFFF2C94C),
                                      'assets/images/rme.png',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F8E2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 53,
                        vertical: 34.0,
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black87,
                          ),
                          children: [
                            const TextSpan(
                              text:
                                  "You are doing well! Keep it up! You are making exceptional progress in ",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: topSubjects[0],
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 36,
                                color: Color(0xFF0D9488),
                              ),
                            ),
                            const TextSpan(
                              text: " and ",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: topSubjects[1],
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 36,
                                color: Color(0xFF2563EB),
                              ),
                            ),
                            const TextSpan(
                              text: " this week.",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Weekly Work Section
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color(0xFFE0E0E0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Scores',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1A1A1A),
                              ),
                            ),
                            Obx(() {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: const Color(0xFF19975E),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    dropdownColor: Colors.white,
                                    value: sidebarController
                                        .selectedWeeklyWorkFilter
                                        .value,
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    onChanged: (String? newValue) {
                                      if (newValue != null) {
                                        sidebarController
                                                .selectedWeeklyWorkFilter
                                                .value =
                                            newValue;
                                      }
                                    },
                                    items:
                                        <String>[
                                          'Today',
                                          'Past 1 week',
                                          'Past 1 Month',
                                          'Past 3 Months',
                                          'Past 6 Months',
                                          'Past 1 Year',
                                        ].map<DropdownMenuItem<String>>((
                                          String value,
                                        ) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                        const SizedBox(height: 32),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Subject',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Practice',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Completed Strands',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Quiz',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Divider(thickness: 1),
                        Obx(() {
                          final socialStats = sidebarController
                              .getWeeklyWorkData("Social Studies");
                          final englishStats = sidebarController
                              .getWeeklyWorkData("English");
                          final scienceStats = sidebarController
                              .getWeeklyWorkData("Science");
                          final rmeStats = sidebarController.getWeeklyWorkData(
                            "Religious & Moral Education",
                          );
                          final mathStats = sidebarController.getWeeklyWorkData(
                            "Math",
                          );

                          // Helper to find course by title
                          Course getCourse(String title) {
                            return sidebarController.courses.firstWhere(
                              (c) => c.title == title,
                            );
                          }

                          return Column(
                            children: [
                              _buildWeeklyRow(
                                "English",
                                englishStats["practice"]!,
                                englishStats["strand"]!,
                                englishStats["quiz"]!,
                                const Color(0xFF8B5CF6),
                                getCourse("English"),
                                sidebarController.selectedGrade.value,
                              ),
                              _buildWeeklyRow(
                                "Science",
                                scienceStats["practice"]!,
                                scienceStats["strand"]!,
                                scienceStats["quiz"]!,
                                const Color(0xFF0D9488),
                                getCourse("Science"),
                                sidebarController.selectedGrade.value,
                              ),
                              _buildWeeklyRow(
                                "Math",
                                mathStats["practice"]!,
                                mathStats["strand"]!,
                                mathStats["quiz"]!,
                                const Color(0xFF2563EB),
                                getCourse("Math"),
                                sidebarController.selectedGrade.value,
                              ),
                              _buildWeeklyRow(
                                "Social",
                                socialStats["practice"]!,
                                socialStats["strand"]!,
                                socialStats["quiz"]!,
                                const Color(0xFFF97316),
                                getCourse("Social Studies"),
                                sidebarController.selectedGrade.value,
                              ),
                              _buildWeeklyRow(
                                "RME",
                                rmeStats["practice"]!,
                                rmeStats["strand"]!,
                                rmeStats["quiz"]!,
                                const Color(0xFFEAB308),
                                getCourse("Religious & Moral Education"),
                                sidebarController.selectedGrade.value,
                              ),
                            ],
                          );
                        }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Subject Activity Stats Section
                  Obx(() {
                    // Helper to find course by title
                    Course getCourse(String title) {
                      return sidebarController.courses.firstWhere(
                        (c) => c.title == title,
                      );
                    }

                    return Column(
                      children: [
                        _buildSubjectActivityCard(
                          getCourse("English"),
                          "Learning through language",
                          sidebarController.getSubjectActivityStats("English"),
                        ),
                        _buildSubjectActivityCard(
                          getCourse("Science"),
                          "Science in everyday life",
                          sidebarController.getSubjectActivityStats("Science"),
                        ),
                        _buildSubjectActivityCard(
                          getCourse("Math"),
                          "Fun with numbers",
                          sidebarController.getSubjectActivityStats("Math"),
                        ),
                        _buildSubjectActivityCard(
                          getCourse("Social Studies"),
                          "Explore society and culture",
                          sidebarController.getSubjectActivityStats(
                            "Social Studies",
                          ),
                        ),
                        _buildSubjectActivityCard(
                          getCourse("Religious & Moral Education"),
                          "Learning values and morals",
                          sidebarController.getSubjectActivityStats(
                            "Religious & Moral Education",
                          ),
                        ),
                      ],
                    );
                  }),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildGridLine(String label) {
    return Column(
      children: [
        const SizedBox(height: 21),
        SizedBox(
          width: 50,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 21),
      ],
    );
  }

  double _calculateYPosition(double progress) {
    // Grid values in descending order as they appear from top to bottom
    final values = [1.0, 0.75, 0.5, 0.25, 0.15, 0.0];

    if (progress >= values[0]) return 0.0;
    if (progress <= values[values.length - 1]) return 1.0;

    for (int i = 0; i < values.length - 1; i++) {
      final high = values[i];
      final low = values[i + 1];
      if (progress <= high && progress >= low) {
        // Find position within this segment
        // Each segment takes 1/5 of the total height space between lines
        final segmentHeight = 1.0 / (values.length - 1);
        final relativePos = (high - progress) / (high - low);
        return (i + relativePos) * segmentHeight;
      }
    }
    return 1.0;
  }

  Widget _buildSubjectBar(double progress, Color color) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment(0, -1 + 2 * _calculateYPosition(progress)),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "${(progress * 100).toInt()}%",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubjectLabel(String name, Color color, String image) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(image, height: 45, width: 45),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFF000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeeklyRow(
    String subject,
    String practice,
    String strand,
    String quiz,
    Color color,
    Course course,
    String grade,
  ) {
    return GestureDetector(
      onTap: () {
        final sidebarController = Get.find<SidebarController>();
        final targetGrade = grade == "All" ? "JHS 1" : grade;
        if (grade == "All") {
          sidebarController.selectedGrade.value = "JHS 1";
        }
        Get.to(
          () => SubjectDetailsScreen(
            subjectTitle: subject,
            gradeLevel: targetGrade,
            course: course,
            subjectColor: color,
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    subject,
                    style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    practice,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    strand,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    quiz,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1, height: 1),
        ],
      ),
    );
  }

  Widget _buildSubjectActivityCard(
    Course course,
    String subtitle,
    Map<String, dynamic> stats,
  ) {
    final sidebarController = Get.find<SidebarController>();
    return GestureDetector(
      onTap: () {
        Get.to(() => SubjectChartScreen(
          course: course,
          subtitle: subtitle,
          subjectColor: course.textColor,
        ));
      },
      child: Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE0E0E0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Course Image Icon
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(course.image, fit: BoxFit.contain),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.title.replaceAll("\n", " "),
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(() {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF19975E)),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      dropdownColor: Colors.white,
                      value:
                          sidebarController.selectedActivityStatsFilters[course
                              .title] ??
                          "Today",
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          sidebarController.selectedActivityStatsFilters[course
                                  .title] =
                              newValue;
                        }
                      },
                      items:
                          <String>[
                            'Today',
                            'Past 1 week',
                            'Past 1 Month',
                            'Past 3 Months',
                            'Past 6 Months',
                            'Past 1 Year',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                    ),
                  ),
                );
              }),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildStatBox(
                "Activity Count",
                stats["activityCount"].toString(),
                const Color(0xFF3CCFFF),
                Colors.black,
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                "Avg. Daily Hours",
                stats["avgDailyHours"].toString(),
                const Color(0xFFFFE6E9),
                Colors.black,
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                "Total Hours",
                stats["totalHours"].toString(),
                const Color(0xFFD3FFC2),
                Colors.black,
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                "Avg. Quiz Score",
                stats["avgQuizScore"].toString(),
                const Color(0xFFFFD899),
                Colors.black,
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }

  Widget _buildStatBox(
    String label,
    String value,
    Color bgColor,
    Color textColor,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
