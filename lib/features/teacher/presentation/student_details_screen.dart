import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../core/config/debug_print.dart';
import '../../../core/no_screenshot-development/lib/no_screenshot.dart';
import '../../teacher_profile/presentation/controller/profile_controller.dart';
import '../data/model/get_student_details_response_model.dart';
import 'controller/teacher_dashboard_controller.dart';

class StudentDetailsScreen extends StatefulWidget {
  final String? studentId;
  final VoidCallback? onProfileTap;
  final VoidCallback? onBack;
  const StudentDetailsScreen({
    super.key,
    this.studentId,
    this.onProfileTap,
    this.onBack,
  });

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  late final TeacherDashboardController _dashboardController;
  late final TeacherProfileController _profileController;

  String _selectedPeriod =
      'All'; // This is for local subject filtering in Recent Activity
  String _selectedTimePeriod = 'Past 1 Month';
  String _selectedGradeLevel = 'ALL';
  String? _selectedSubjectName;
  final _noScreenshot = NoScreenshot.instance;

  @override
  void initState() {
    super.initState();
    _noScreenshot.screenshotOff();
    _dashboardController = Get.find<TeacherDashboardController>();
    _profileController = Get.find<TeacherProfileController>();

    // Fetch subjects if not already loaded or always refresh
    _dashboardController.fetchSubject();

    // Fetch student overview if studentId is provided
    if (widget.studentId != null) {
      _dashboardController.fetchStudentDetailsTop(
        widget.studentId!,
        timePeriod: _selectedTimePeriod,
      );
      _dashboardController.fetchStudentDetailsBottom(
        widget.studentId!,
        gradeLevel: _selectedGradeLevel,
      );
    }

    // Fetch profile if not already loaded
    if (_profileController.userInfo.value == null) {
      _profileController.fetchProfile();
    }
  }

  //  @override
  // void dispose() {
  //   _noScreenshot.screenshotOn();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F8E2),
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: Obx(() {
              final overviewTop = _dashboardController.studentOverviewTop.value;
              final overviewBottom =
                  _dashboardController.studentOverviewBottom.value;

              if (overviewTop == null &&
                  overviewBottom == null &&
                  _dashboardController.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(color: Color(0xFF019E2E)),
                );
              }

              final combinedOverview = overviewTop ?? overviewBottom;

              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(),
                      const SizedBox(height: 16),
                      _buildStudentInfoCard(combinedOverview?.student),
                      const SizedBox(height: 24),
                      _buildProgressSheetSection(combinedOverview),
                      const SizedBox(height: 24),
                      _buildFilterSection(overviewBottom ?? overviewTop),
                      const SizedBox(height: 24),
                      _buildSubjectDetailsSection(overviewTop, overviewBottom),
                      const SizedBox(height: 24),
                      _buildBottomSection(overviewTop, overviewBottom),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFF0F0F0))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 12),
          InkWell(
            onTap: widget.onProfileTap,
            child: Obx(() {
              final user = _profileController.userInfo.value?.user;
              final teacher = _profileController.userInfo.value?.teacher;
              return Row(
                children: [
                  Text(
                    user?.name ?? 'Loading...',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 16),
                  ClipOval(
                    child: (teacher?.picture?.url ?? '').isNotEmpty
                        ? Image.network(
                            teacher!.picture!.url!,
                            height: 44,
                            width: 44,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                _buildFallbackAvatar(44, 24),
                          )
                        : _buildFallbackAvatar(44, 24),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (widget.onBack != null)
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: widget.onBack,
                color: Colors.black,
              ),
            const Text(
              'Student Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              'Dashboard',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
            const Icon(Icons.chevron_right, size: 16, color: Colors.grey),
            const Text(
              'Student Overview',
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStudentInfoCard(Student? student) {
    return Container(
      // height: 221,
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE4E4E4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'School name: ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181919),
                ),
              ),
              Expanded(
                child: Text(
                  student?.schoolName ?? 'Loading...',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF008302),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              ClipOval(
                child: Container(
                  width: 120,
                  height: 120,
                  color: const Color(0xFFF0F0F0),
                  child: (student?.picture.url ?? '').isNotEmpty
                      ? Image.network(
                          student!.picture.url,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              _buildFallbackAvatar(120, 60),
                        )
                      : _buildFallbackAvatar(120, 60),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    student?.studentName ?? 'Loading...',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF181919),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(color: const Color(0xFF079938)),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: const Text(
                      'Top Student',
                      style: TextStyle(
                        color: Color(0xFF058C34),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'User ID: ${student?.userId ?? '...'}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF3B3B3B),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Grade Level: ${student?.gradeLevel ?? '...'}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF3B3B3B),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgressSheetSection(GetStudentDetailsResponseModel? data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${data?.student?.studentName ?? 'Student'}'s Progress Sheet",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF263451),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Select subject and see the progress',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF6C6C6C),
                  ),
                ),
              ],
            ),
            // Time Period Filter
            _buildFilterDropdown(
              value: _selectedTimePeriod,
              options: data?.filters?.timePeriods ??
                  [
                    "Today",
                    "Past Week",
                    "Past 1 Month",
                    "Past 3 Months",
                    "Past 6 Months",
                    "Past Year"
                  ],
              onSelected: (value) {
                setState(() {
                  _selectedTimePeriod = value;
                });
                _refreshDataTop();
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        Obx(() {
          final subjects = _dashboardController.subInfo.value?.data ?? [];
          if (subjects.isEmpty && _dashboardController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF019E2E)),
            );
          }

          // Set initial selection if none is selected and data is available
          if (_selectedSubjectName == null && subjects.isNotEmpty) {
            _selectedSubjectName = subjects.first.name;
          }

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: subjects.map((subject) {
                final isSelected = _selectedSubjectName == subject.name;
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _selectedSubjectName = subject.name;
                        _selectedPeriod = subject.name!;
                      });
                      _refreshDataTop();
                      _refreshDataBottom();
                    },
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 190, // Set a fixed width for the cards
                      child: _buildSubjectCard(
                        _getSubjectIcon(subject.name),
                        isSelected: isSelected,
                        completionRate: data?.overview?.courseWiseOverview
                            ?.firstWhereOrNull((e) => e.subject == subject.name)
                            ?.completionRate
                            ?.toInt(),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        }),
      ],
    );
  }

  String _getSubjectIcon(String? subjectName) {
    if (subjectName == null) return 'assets/images/eglishIcon.png';
    final name = subjectName.toLowerCase();
    if (name.contains('english')) return 'assets/images/eglishIcon.png';
    if (name.contains('science')) return 'assets/images/scienceIcon.png';
    if (name.contains('math')) return 'assets/images/mathIcon.png';
    if (name.contains('social')) return 'assets/images/socialIcon.png';
    if (name.contains('religious') || name.contains('moral')) {
      return 'assets/images/relIcon.png';
    }
    return 'assets/images/eglishIcon.png'; // Default
  }

  Widget _buildFilterSection(GetStudentDetailsResponseModel? data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // Grade Level Filter
          _buildFilterDropdown(
            value: _selectedGradeLevel,
            options:
                data?.filters?.gradeLevels ?? ["JHS1", "JHS2", "JHS3", "ALL"],
            onSelected: (value) {
              setState(() {
                _selectedGradeLevel = value;
              });
              _refreshDataBottom();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFilterDropdown({
    required String value,
    required List<String> options,
    required Function(String) onSelected,
  }) {
    return PopupMenuButton<String>(
      offset: const Offset(0, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: const Color(0xFFF3F8E2), // Light green background for menu
      onSelected: onSelected,
      itemBuilder: (context) {
        return options.map((option) {
          return PopupMenuItem<String>(
            value: option,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xFF019E2E)),
              ),
              child: Center(
                child: Text(
                  option,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1F2937),
                  ),
                ),
              ),
            ),
          );
        }).toList();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF019E2E),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 18,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void _refreshDataTop() {
    if (widget.studentId != null) {
      _dashboardController.fetchStudentDetailsTop(
        widget.studentId!,
        timePeriod: _selectedTimePeriod,
        subject: _selectedSubjectName,
      );
    }
  }

  void _refreshDataBottom() {
    if (widget.studentId != null) {
      _dashboardController.fetchStudentDetailsBottom(
        widget.studentId!,
        gradeLevel: _selectedGradeLevel,
        subject: _selectedSubjectName,
      );
    }
  }

  Widget _buildSubjectCard(
    String imagePath, {
    bool isSelected = false,
    int? completionRate,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? const Color(0xFF019E2E) : Colors.transparent,
          width: 3,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(isSelected ? 5 : 8),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.image_not_supported, size: 224),
            ),
          ),
          // if (completionRate != null)
          //   Text(
          //     '$completionRate% Completed',
          //     style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          //   ),
        ],
      ),
    );
  }

  Widget _buildSubjectDetailsSection(GetStudentDetailsResponseModel? topData,
      GetStudentDetailsResponseModel? bottomData) {
    final summary = topData?.overview?.summary;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Column(
        children: [
          Text(
            _selectedSubjectName ?? 'Select Subject',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildStatBox(
                'Activity Count',
                '${summary?.activityCount ?? 0}',
                const Color(0xFF3CCFFF),
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                'Avg. Daily Hours',
                (summary?.avgDailyHours ?? 0.0).toStringAsFixed(2),
                const Color(0xFFFFE8E8),
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                'Total Hours',
                '${summary?.totalHours ?? 0}',
                const Color(0xFFD2FBB6),
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                'Avg. Quiz Score',
                '${(summary?.avgQuizScore ?? 0) % 1 == 0 ? (summary?.avgQuizScore ?? 0).toInt() : (summary?.avgQuizScore ?? 0)}/100',
                const Color(0xFFFED692),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Average Daily Time Spend',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1E1E1E),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 280,
            width: double.infinity,
            child: _buildAreaChart(
              bottomData?.overview.monthlyActivity,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendDot('Avg. Daily Hours', const Color(0xFFFFB5B5)),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'Average Monthly Scores',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1E1E1E),
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 280,
            width: double.infinity,
            child: _buildQuizChart(
              bottomData?.overview.monthlyActivity,
            ),
          ),
          const SizedBox(height: 16),
          // Legend for Quiz
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendDot('Avg. Quiz Score', const Color(0xFFFFCC80)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLegendDot(String text, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.4),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF5A5A5A),
          ),
        ),
      ],
    );
  }

  Widget _buildAreaChart(MonthlyActivity? activity) {
    if (activity == null || activity.months.isEmpty) {
      return const Center(child: Text('No data for this subject'));
    }

    final months = activity.months;
    const monthLabels = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: 12,
          minX: 0,
          maxX: 11,
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            horizontalInterval: 4,
            verticalInterval: 1,
            getDrawingHorizontalLine: (value) => const FlLine(
              color: Color(0xFFE0E0E0),
              strokeWidth: 1,
              dashArray: [4, 4],
            ),
            getDrawingVerticalLine: (value) => const FlLine(
              color: Color(0xFFE0E0E0),
              strokeWidth: 1,
              dashArray: [4, 4],
            ),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 60,
                interval: 4,
                getTitlesWidget: (value, meta) {
                  if (value % 4 != 0 || value > 12)
                    return const SizedBox.shrink();
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      value.toInt().toString(),
                      style: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index >= 0 && index < monthLabels.length) {
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(
                        monthLabels[index],
                        style: TextStyle(
                          color: const Color(0xFF000000).withOpacity(0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1),
              left: BorderSide.none,
              right: BorderSide.none,
              top: BorderSide.none,
            ),
          ),
          lineBarsData: [
            // Avg Daily Hours
            LineChartBarData(
              spots: months.asMap().entries.map((entry) {
                return FlSpot(
                  entry.key.toDouble(),
                  entry.value.avgDailyHours.toDouble(),
                );
              }).toList(),
              isCurved: true,
              color: const Color(0xFFFFB5B5),
              barWidth: 3,
              isStrokeCapRound: true,
              shadow: const Shadow(
                color: Color(0xFFFFB5B5),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 8, // outer size
                    color: barData.color!, // outer soft color
                    strokeWidth: 4, // white ring thickness
                    strokeColor: Colors.white,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuizChart(MonthlyActivity? activity) {
    if (activity == null || activity.months.isEmpty) {
      return const Center(child: Text('No data for this subject'));
    }

    final months = activity.months;
    const monthLabels = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: 100,
          minX: 0,
          maxX: 11,
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            horizontalInterval: 20,
            verticalInterval: 1,
            getDrawingHorizontalLine: (value) => const FlLine(
              color: Color(0xFFE0E0E0),
              strokeWidth: 1,
              dashArray: [4, 4],
            ),
            getDrawingVerticalLine: (value) => const FlLine(
              color: Color(0xFFE0E0E0),
              strokeWidth: 1,
              dashArray: [4, 4],
            ),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 60,
                interval: 20,
                getTitlesWidget: (value, meta) {
                  if (value > 100) return const SizedBox.shrink();
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      '${value.toInt()}',
                      style: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index >= 0 && index < monthLabels.length) {
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(
                        monthLabels[index],
                        style: TextStyle(
                          color: const Color(0xFF000000).withOpacity(0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1),
              left: BorderSide(color: Color(0xFFE0E0E0), width: 1),
              right: BorderSide.none,
              top: BorderSide.none,
            ),
          ),
          lineBarsData: [
            // Quiz Score
            LineChartBarData(
              spots: months.asMap().entries.map((entry) {
                return FlSpot(
                  entry.key.toDouble(),
                  entry.value.avgQuizScore.toDouble(),
                );
              }).toList(),
              isCurved: true,
              color: const Color(0xFFFFCC80),
              barWidth: 2,
              isStrokeCapRound: true,
              shadow: const Shadow(
                color: Color(0xFFFFCC80),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 8, // outer size
                    color: barData.color!, // outer soft color
                    strokeWidth: 4, // white ring thickness
                    strokeColor: Colors.white,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatBox(String title, String value, Color color) {
    return Expanded(
      child: Container(
        height: 91,
        width: 248.5,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E1E1E),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection(GetStudentDetailsResponseModel? topData,
      GetStudentDetailsResponseModel? bottomData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// TOP SIDE – Progress Chart
        Container(
          height: 528,
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFE5E7EB)),
          ),
          child:
              _buildProgressChart(topData?.overview?.subjectProgress.where((p) {
            if (_selectedSubjectName == null ||
                _selectedSubjectName == 'All' ||
                _selectedSubjectName == 'ALL') return true;
            final selected = _selectedSubjectName!
                .toLowerCase()
                .replaceAll('and', '&')
                .trim();
            final current =
                (p.subject ?? '').toLowerCase().replaceAll('and', '&').trim();
            return current == selected;
          }).toList()),
        ),

        const SizedBox(height: 24),

        /// BOTTOM SIDE – Recent Work
        Container(
          width: double.infinity,
          height: 350, // Reduced height to fit both tables
          padding: const EdgeInsets.only(
            top: 24,
            right: 16,
            bottom: 24,
            left: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1, color: const Color(0xFFE5E7EB)),
          ),
          child: _buildRecentWorkSection(bottomData),
        ),

        const SizedBox(height: 24),

        /// BOTTOM SIDE – Quiz Scores
        Container(
          width: double.infinity,
          height: 350,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1, color: const Color(0xFFE5E7EB)),
          ),
          child: _buildQuizScoresSection(topData ?? bottomData),
        ),
      ],
    );
  }

  Widget _buildRecentWorkSection(GetStudentDetailsResponseModel? data) {
    final recentWorks = data?.overview?.recentWork;

    // ─── DEBUG: Print recent work data ────────────────────────────────────────
    DPrint.log('─── Recent Work Debug ───');
    DPrint.log('data is null: ${data == null}');
    DPrint.log('recentWork count: ${recentWorks?.length ?? 0}');
    for (final w in recentWorks ?? []) {
      DPrint.log(
        'Subject: ${w.subject} | '
        'PracticeScore: ${w.practiceScore} | '
        'QuizScore: ${w.quizScore} | '
        'Date: ${w.date}',
      );
    }
    DPrint.log('─────────────────────────');

    final availableSubjects = data?.filters?.subjects ??
        [
          'English',
          'Math',
          'Science',
          'Social Studies',
          'Religious and Moral Education'
        ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Most Recent Activity',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            PopupMenuButton<String>(
              color: Colors.white,
              onSelected: (value) {
                setState(() {
                  _selectedPeriod = value;
                  _selectedSubjectName = value == 'All' ? null : value;
                });
                _refreshDataTop();
                _refreshDataBottom();
              },
              itemBuilder: (context) {
                final options = ["All", ...availableSubjects];
                return options
                    .map(
                      (option) => PopupMenuItem<String>(
                        value: option,
                        child: Text(
                          option,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    )
                    .toList();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: const Color(0xFF22C55E)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _selectedPeriod,
                      style: const TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 16,
                      color: Color(0xFF000000),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 6),

        if (recentWorks != null && recentWorks.isNotEmpty)
          const Text(
            "Recent Lesson Activity completed across subjects.",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF000000),
              fontWeight: FontWeight.w400,
            ),
          ),

        const SizedBox(height: 20),

        /// Table Header
        _buildTableHeader(),

        const SizedBox(height: 10),

        /// Table Rows
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: () {
                final filteredItems = recentWorks?.where((work) {
                      final selectedSub = _selectedPeriod
                          .toLowerCase()
                          .trim()
                          .replaceAll('and', '&');
                      if (selectedSub == "all") return true;

                      final workSub = work.subject
                          .toLowerCase()
                          .trim()
                          .replaceAll('and', '&');

                      if (selectedSub == "science") {
                        return workSub == "science";
                      }

                      return workSub == selectedSub ||
                          workSub.contains(selectedSub) ||
                          selectedSub.contains(workSub);
                    }).toList() ??
                    [];

                DPrint.log(
                    "Recent Activity Filter: $_selectedPeriod, Found: ${filteredItems.length} items");

                if (filteredItems.isEmpty) {
                  return [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text("No records found"),
                      ),
                    )
                  ];
                }

                return filteredItems.map((work) {
                  return Column(
                    children: [
                      _buildTableRow(
                        work.subject,
                        '${(work.practiceScore ?? 0).clamp(0, 100)}%',
                        '${(work.quizScore ?? 0).clamp(0, 100)}%',
                        '${work.lesson.strand} - ${work.lesson.subStrand} (${work.lesson.lessonNumber})',
                        work.date,
                      ),
                      _divider(),
                    ],
                  );
                }).toList();
              }(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTableHeader() {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "Subject",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Practice Score",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Quiz Score",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Lesson",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Date",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTableRow(
    String subject,
    String practice,
    String quiz,
    String lesson,
    String date,
  ) {
    Color subjectColor = _getSubjectColor(subject);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              subject,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: subjectColor,
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              practice,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              quiz,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              lesson,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              () {
                try {
                  final dt = DateTime.parse(date);
                  return DateFormat('d MMMM, yyyy').format(dt);
                } catch (e) {
                  return date.length > 10 ? date.substring(0, 10) : date;
                }
              }(),
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return const Divider(color: Color(0xFFE5E7EB), thickness: 1);
  }

  /// Reusable Y-axis label column
  Widget _buildYAxisLabels({bool visible = true}) {
    return Visibility(
      visible: visible,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('100%', style: TextStyle(fontSize: 12)),
          Text('75%', style: TextStyle(fontSize: 12)),
          Text('50%', style: TextStyle(fontSize: 12)),
          Text('25%', style: TextStyle(fontSize: 12)),
          Text('0%', style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  bool _isWithinPeriod(String? dateStr, String period) {
    if (dateStr == null) return false;
    final date = DateTime.tryParse(dateStr);
    if (date == null) return false;
    final now = DateTime.now();

    switch (period) {
      case 'Today':
        return date.year == now.year &&
            date.month == now.month &&
            date.day == now.day;
      case 'Weekly':
        final weekAgo = now.subtract(const Duration(days: 7));
        return date.isAfter(weekAgo);
      case 'Monthly':
        final monthAgo = now.subtract(const Duration(days: 30));
        return date.isAfter(monthAgo);
      default:
        return true;
    }
  }

  Widget _buildProgressChart(List<SubjectProgress>? subjectProgress) {
    if (subjectProgress == null || subjectProgress.isEmpty) {
      return const Center(child: Text('No progress data available'));
    }

    return Column(
      children: [
        /// CHART AREA (only bars + grid)
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// Y AXIS
              _buildYAxisLabels(),

              const SizedBox(width: 20),

              /// GRID + BARS
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    /// Horizontal grid lines
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        5,
                        (_) => Container(
                          height: 1,
                          color: const Color(0xFFE5E7EB),
                        ),
                      ),
                    ),

                    /// PROGRESS BARS
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: subjectProgress.map((progress) {
                        return Expanded(
                          child: _buildBar(
                            (progress.completionRate ?? 0).toInt(),
                            _getSubjectColor(progress.subject),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        /// ICON ROW
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildYAxisLabels(visible: false),
            const SizedBox(width: 20),
            Expanded(
              child: Row(
                children: subjectProgress.map((progress) {
                  return Expanded(
                    child: _buildBottomIcon(
                      progress.subject ?? '',
                      _getSubjectLogo(progress.subject),
                      _getSubjectColor(progress.subject),
                      (progress.completionRate ?? 0).toInt(),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Color _getSubjectColor(String? subject) {
    if (subject == null) return Colors.black;
    final name = subject.toLowerCase();
    if (name.contains('math')) return const Color(0xFF2C69D1);
    if (name.contains('social')) return const Color(0xFFFF9800);
    if (name.contains('science')) return const Color(0xFF009688);
    if (name.contains('english')) return const Color(0xFF9C27B0);
    if (name.contains('religious') || name.contains('moral'))
      return const Color(0xFFFFC107);
    return Colors.black;
  }

  String _getSubjectLogo(String? subject) {
    if (subject == null) return 'assets/images/mathLogo.png';
    final name = subject.toLowerCase();
    if (name.contains('math')) return 'assets/images/mathLogo.png';
    if (name.contains('social')) return 'assets/images/socialLogo.png';
    if (name.contains('science')) return 'assets/images/scienceLogo.png';
    if (name.contains('english')) return 'assets/images/englishLogo.png';
    if (name.contains('religious') || name.contains('moral'))
      return 'assets/images/rmeLogo.png';
    return 'assets/images/mathLogo.png';
  }

  Widget _buildBar(int percentage, Color color) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;

        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            /// Invisible full height
            SizedBox(height: height),

            /// Percentage label positioned correctly
            Positioned(
              bottom: height * (percentage / 100),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '$percentage%',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBottomIcon(
    String label,
    String imagePath,
    Color color,
    int percentage,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          // decoration: BoxDecoration(
          //   color: color.withOpacity(0.1),
          //   shape: BoxShape.circle,
          // ),
          child: Image.asset(imagePath, height: 32, width: 32),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildQuizScoresSection(GetStudentDetailsResponseModel? data) {
    final courseWise = data?.overview.quizScoreTable ?? [];

    // ─── DEBUG: Print quiz score table data ───────────────────────────────────
    DPrint.log('─── Quiz Score Table Debug ───');
    DPrint.log('bottomData is null: ${data == null}');
    DPrint.log('quizScoreTable length: ${courseWise.length}');
    for (final item in courseWise) {
      DPrint.log(
        'Subject: ${item.subject} | '
        'AvgLatestAttempt: ${item.avgLatestAttempt} | '
        'AvgFirstAttempt: ${item.avgFirstAttempt}',
      );
    }
    DPrint.log('──────────────────────────────');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quiz Scores Table',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 29),
        _buildQuizTableHeader(),
        const SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: courseWise.map((item) {
                return Column(
                  children: [
                    _buildQuizTableRow(
                      item.subject,
                      '${item.avgLatestAttempt.toInt()}%',
                      '${item.avgFirstAttempt.toInt()}%',
                    ),
                    _divider(),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuizTableHeader() {
    return const Row(
      children: [
        Expanded(
          flex: 10,
          child: Text(
            "Subjects",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Text(
            "Average Latest Attempt Quiz Scores",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Text(
            "Average First Attempt Quiz Scores",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFF000000),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuizTableRow(
    String subject,
    String latestScore,
    String initialScore,
  ) {
    Color subjectColor = _getSubjectColor(subject);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              subject,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: subjectColor,
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              latestScore,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              initialScore,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFallbackAvatar(double size, double iconSize) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      color: const Color(0xFF019E2E).withOpacity(0.1),
      child: Icon(
        Icons.person,
        color: const Color(0xFF019E2E),
        size: iconSize,
      ),
    );
  }
}
