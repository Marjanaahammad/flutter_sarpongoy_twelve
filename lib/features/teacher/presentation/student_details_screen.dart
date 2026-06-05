import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

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

  String _selectedPeriod = 'All';
  String? _selectedSubjectName;

  @override
  void initState() {
    super.initState();
    _dashboardController = Get.find<TeacherDashboardController>();
    _profileController = Get.find<TeacherProfileController>();

    // Fetch subjects if not already loaded or always refresh
    _dashboardController.fetchSubject();

    // Fetch student overview if studentId is provided
    if (widget.studentId != null) {
      _dashboardController.fetchStudentDetails(widget.studentId!);
    }

    // Fetch profile if not already loaded
    if (_profileController.userInfo.value == null) {
      _profileController.fetchProfile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F8E2),
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: Obx(() {
              final overview = _dashboardController.studentOverview.value;

              if (overview == null && _dashboardController.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(color: Color(0xFF019E2E)),
                );
              }

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
                      _buildStudentInfoCard(overview?.student),
                      const SizedBox(height: 24),
                      _buildProgressSheetSection(overview),
                      const SizedBox(height: 24),
                      _buildSubjectDetailsSection(overview),
                      const SizedBox(height: 24),
                      _buildBottomSection(overview),
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
                  child: (student?.picture?.url ?? '').isNotEmpty
                      ? Image.network(
                          student!.picture!.url!,
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

  Widget _buildProgressSheetSection(StudentDetailsData? data) {
    return Column(
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
                      });
                    },
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 190, // Set a fixed width for the cards
                      child: _buildSubjectCard(
                        _getSubjectIcon(subject.name),
                        isSelected: isSelected,
                        completionRate: data?.progressSheet?.courseWiseOverview
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

  Widget _buildSubjectDetailsSection(StudentDetailsData? data) {
    // Use courseWiseOverview for subject stats
    final subjectOverview = data?.progressSheet?.courseWiseOverview
        ?.firstWhereOrNull((e) => e.subject == _selectedSubjectName);

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
                '${subjectOverview?.activityCount ?? 0}',
                const Color(0xFF3CCFFF),
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                'Avg. Daily Hours',
                '${subjectOverview?.avgDailyHours ?? 0.0}',
                const Color(0xFFFFE8E8),
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                'Total Hours',
                '${subjectOverview?.totalHours ?? 0}',
                const Color(0xFFD2FBB6),
              ),
              const SizedBox(width: 12),
              _buildStatBox(
                'Avg. Quiz Score',
                '${subjectOverview?.avgQuizScore ?? 0}/100',
                const Color(0xFFFED692),
              ),
            ],
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 280,
            width: double.infinity,
            child: _buildAreaChart(
              subjectOverview?.marks ??
                  (data?.progressSheet?.marks != null
                      ? ActivityMarks(
                          days: data!.progressSheet!.marks!.days
                              ?.map(
                                (d) => DayActivity(
                                  label: d.label,
                                  date: d.date,
                                  activityCount: 0,
                                  totalHours: 0,
                                  avgQuizScore: 0,
                                  subject: _selectedSubjectName,
                                ),
                              )
                              .toList(),
                          totals: ActivityTotals(
                            activityCount: 0,
                            totalHours: 0,
                            avgQuizScore: 0,
                            avgDailyHours: 0,
                          ),
                        )
                      : null),
            ),
          ),
          const SizedBox(height: 16),
          // Legend
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendDot('Activity Count', const Color(0xFF63D3FF)),
              const SizedBox(width: 24),
              _buildLegendDot('Avg. Daily Hours', const Color(0xFFFFB5B5)),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendDot('Total Hours', const Color(0xFFAAED8E)),
              const SizedBox(width: 24),
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

  Widget _buildAreaChart(ActivityMarks? marks) {
    if (marks == null || marks.days == null || marks.days!.isEmpty) {
      return const Center(child: Text('No data for this subject'));
    }

    final days = marks.days!;

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
          maxX: (days.length - 1).toDouble(),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            horizontalInterval: 25,
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
                interval: 25,
                getTitlesWidget: (value, meta) {
                  String text;
                  switch (value.toInt()) {
                    case 0:
                      text = '0-39';
                      break;
                    case 25:
                      text = '40-59';
                      break;
                    case 50:
                      text = '60-79';
                      break;
                    case 75:
                      text = '80-100';
                      break;
                    case 100:
                    default:
                      return const SizedBox.shrink();
                  }
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      text,
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
                  if (index >= 0 && index < days.length) {
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(
                        days[index].label ?? '',
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
            // Quiz Score
            LineChartBarData(
              spots: days.asMap().entries.map((entry) {
                return FlSpot(
                  entry.key.toDouble(),
                  (entry.value.avgQuizScore ?? 0).toDouble(),
                );
              }).toList(),
              isCurved: true,
              color: const Color(0xFFFED692),
              barWidth: 2,
              isStrokeCapRound: true,
              shadow: const Shadow(
                color: Color(0xFFFED692),
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
            // Total Hours
            LineChartBarData(
              spots: days.asMap().entries.map((entry) {
                return FlSpot(
                  entry.key.toDouble(),
                  (entry.value.totalHours ?? 0).toDouble(),
                );
              }).toList(),
              isCurved: true,
              color: const Color(0xFF99E665),
              barWidth: 2,
              isStrokeCapRound: true,
              shadow: const Shadow(
                color: Color(0xFF99E665),
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
            // Activity Count
            LineChartBarData(
              spots: days.asMap().entries.map((entry) {
                return FlSpot(
                  entry.key.toDouble(),
                  (entry.value.activityCount ?? 0).toDouble(),
                );
              }).toList(),
              isCurved: true,
              color: const Color(0xFF3CCFFF),
              barWidth: 2,
              isStrokeCapRound: true,
              shadow: const Shadow(
                color: Color(0xFFCBF2FF),
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

  Widget _buildBottomSection(StudentDetailsData? data) {
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
          child: _buildProgressChart(data?.subjectWise),
        ),

        const SizedBox(height: 24),

        /// BOTTOM SIDE – Recent Work
        Container(
          width: double.infinity,
          height: 528,
          padding: const EdgeInsets.only(
            top: 48,
            right: 16,
            bottom: 48,
            left: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1, color: const Color(0xFFE5E7EB)),
          ),
          child: _buildRecentWorkSection(data?.recentWork),
        ),
      ],
    );
  }

  Widget _buildRecentWorkSection(Map<String, StudentRecentWork>? recentWorks) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recent Activity',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            PopupMenuButton<String>(
              color: Colors.white,
              onSelected: (value) {
                setState(() {
                  _selectedPeriod = value;
                });
              },
              itemBuilder: (context) => ['English', 'Math', 'Science', 'Social Studies', 'Religious and Moral Education', "All"]
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
                  .toList(),
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
                final filteredEntries = recentWorks?.entries.where((entry) {
                      final work = entry.value;
                      return _isWithinPeriod(work.practiceDate, _selectedPeriod) ||
                          _isWithinPeriod(work.quizDate, _selectedPeriod);
                    }).toList() ??
                    [];

                if (filteredEntries.isEmpty) {
                  return [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text("No records for this period"),
                      ),
                    )
                  ];
                }

                return filteredEntries.map((entry) {
                  final subject = entry.key;
                  final work = entry.value;
                  return Column(
                    children: [
                      _buildTableRow(
                        subject,
                        '${work.practice ?? 0}%',
                        '${work.quiz ?? 0}%',
                        '${work.practiceOriginalScore ?? 0}%',
                        '${work.quizOriginalScore ?? 0}%',
                        '${work.lowestQuizScore ?? 0}%',
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
          flex: 3,
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
        // Expanded(
        //   flex: 3,
        //   child: Text(
        //     "Practice Original Score",
        //     style: TextStyle(
        //       fontWeight: FontWeight.w700,
        //       fontSize: 12,
        //       color: Color(0xFF000000),
        //     ),
        //   ),
        // ),
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
    String practiceOriginal,
    String quizOriginal,
    String lowest,
  ) {
    Color subjectColor;

    switch (subject) {
      case "Math":
        subjectColor = const Color(0xFF2C69D1); // Blue
        break;
      case "Social":
        subjectColor = const Color(0xFFF97316); // Orange
        break;
      case "English":
        subjectColor = const Color(0xFF7C3AED); // Purple
        break;
      case "Science":
        subjectColor = const Color(0xFF0D9488); // Teal
        break;
      case "Moral":
        subjectColor = const Color(0xFFEAB308); // Yellow
        break;
      default:
        subjectColor = const Color(0xFF000000);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              subject,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: subjectColor, // ✅ Only subject colored
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              practice,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF000000), // Black
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              quiz,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF000000), // Black
              ),
            ),
          ),
          // Expanded(
          //   flex: 3,
          //   child: Text(
          //     practiceOriginal,
          //     style: const TextStyle(
          //       fontWeight: FontWeight.w400,
          //       fontSize: 12,
          //       color: Color(0xFF000000), // Black
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 3,
            child: Text(
              quizOriginal,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF000000), // Black
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              lowest,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF000000), // Black
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

  Widget _buildProgressChart(Map<String, SubjectWisePercentage>? subjectWise) {
    if (subjectWise == null || subjectWise.isEmpty) {
      return const Center(child: Text('No progress data available'));
    }

    final progresses = subjectWise.entries.toList();

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

                    /// Vertical grid lines
                    Row(
                      children: List.generate(
                        progresses.length,
                        (_) => Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 1,
                              color: const Color(0xFFE5E7EB),
                            ),
                          ),
                        ),
                      ),
                    ),

                    /// PROGRESS BARS
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: progresses.map((entry) {
                        return Expanded(
                          child: _buildBar(
                            (entry.value.percentage ?? 0).toInt(),
                            _getSubjectColor(entry.key),
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
                children: progresses.map((entry) {
                  return Expanded(
                    child: _buildBottomIcon(
                      entry.key,
                      _getSubjectLogo(entry.key),
                      _getSubjectColor(entry.key),
                      (entry.value.percentage ?? 0).toInt(),
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
    if (name.contains('science')) return const Color(0xFF009688);
    if (name.contains('english')) return const Color(0xFF9C27B0);
    if (name.contains('social')) return const Color(0xFFFF9800);
    if (name.contains('religious') || name.contains('moral'))
      return const Color(0xFFFFC107);
    return Colors.black;
  }

  String _getSubjectLogo(String? subject) {
    if (subject == null) return 'assets/images/mathLogo.png';
    final name = subject.toLowerCase();
    if (name.contains('math')) return 'assets/images/mathLogo.png';
    if (name.contains('science')) return 'assets/images/scienceLogo.png';
    if (name.contains('english')) return 'assets/images/englishLogo.png';
    if (name.contains('social')) return 'assets/images/socialLogo.png';
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
  // Widget _buildBottomIcon(
  //   String label,
  //   String imagePath,
  //   Color color,
  //   int percentage,
  // ) {
  //   return Column(
  //     children: [
  //       Transform.translate(
  //         offset: const Offset(
  //           -8,
  //           0,
  //         ), // ← shift icon left by 8px (adjust -4 to -12)
  //         child: Container(
  //           padding: const EdgeInsets.all(10),
  //           child: Image.asset(imagePath, height: 22, width: 22),
  //         ),
  //       ),
  //       const SizedBox(height: 6),
  //       Transform.translate(
  //         offset: const Offset(-8, 0), // ← same shift for label
  //         child: Text(
  //           label,
  //           style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _buildVerticalProgressLine(
    String label,
    String imagePath,
    Color color,
    int percentage,
  ) {
    return Column(
      children: [
        const Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Container(width: 2, color: const Color(0xFFE5E7EB)),

              // FractionallySizedBox(
              //   heightFactor: percentage / 100,
              //   alignment: Alignment.bottomCenter,
              //   child: Align(
              //     alignment: Alignment.topCenter,
              //     child:
              //     Container(
              //       padding: const EdgeInsets.symmetric(
              //         horizontal: 8,
              //         vertical: 4,
              //       ),
              //       // decoration: BoxDecoration(
              //       //   color: color,
              //       //   borderRadius: BorderRadius.circular(6),
              //       // ),
              //       // child: Text(
              //       //   '$percentage%',
              //       //   style: const TextStyle(
              //       //     color: Colors.white,
              //       //     fontSize: 11,
              //       //     fontWeight: FontWeight.bold,
              //       //   ),
              //       // ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),

        // const SizedBox(height: 12),

        /// IMAGE ICON
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(left: 38), // adjust this value
            child: Image.asset(imagePath, height: 32, width: 32),
          ),
        ),

        const SizedBox(height: 6),

        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF000000),
          ),
        ),
      ],
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
