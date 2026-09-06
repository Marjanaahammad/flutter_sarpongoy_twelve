import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_sarpongoy_twelve/core/no_screenshot-development/lib/no_screenshot.dart';
import '../../teacher_profile/presentation/controller/profile_controller.dart';
import 'controller/teacher_dashboard_controller.dart';
import '../data/model/get_teacher_dashboard_response_model.dart';

class TeacherDashboardScreen extends StatefulWidget {
  final VoidCallback? onProfileTap;

  const TeacherDashboardScreen({super.key, this.onProfileTap});

  @override
  State<TeacherDashboardScreen> createState() => _TeacherDashboardScreenState();
}

class _TeacherDashboardScreenState extends State<TeacherDashboardScreen> {
  late final TeacherProfileController _profileController;
  late final TeacherDashboardController _dashboardController;
  final _noScreenshot = NoScreenshot.instance;
  // ───────── colour palette ─────────
  static const _green = Color(0xFF019E2E);
  static const _cardBorder = Color(0xFFE0E0E0);

  static const List<String> _gradeLevels = ['All', 'JHS1', 'JHS2', 'JHS3'];
  static const List<String> _timePeriods = [
    'Today',
    'Past Week',
    'Past 1 Month',
    'Past 3 Months',
    'Past 6 Months',
    'Past Year',
  ];

  final RxString _selectedSubject = 'All'.obs;
  final RxString _selectedGradeLevel = 'All'.obs;
  final RxString _selectedTimePeriod = 'Past Year'.obs;

  @override
  void initState() {
    super.initState();
    _noScreenshot.screenshotOff();
    _profileController = Get.find<TeacherProfileController>();
    _dashboardController = Get.put(TeacherDashboardController());

    // The login flow refreshes the profile after storing the current token.
    // Fetch again only when this screen is reached without profile data.
    if (_profileController.userInfo.value == null) {
      _profileController.fetchProfile();
    }
    _dashboardController.fetchDashboard(
      subject: 'All',
      gradeLevel: 'All',
      timePeriod: 'Past Year',
    );
  }

  @override
  void dispose() {
    _noScreenshot.screenshotOn();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // removePadding: true,
      backgroundColor: const Color(0xFFF0F5E1),
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: Obx(() {
              final data = _dashboardController.userInfo.value;
              if (data == null) {
                return const Center(
                  child: CircularProgressIndicator(color: _green),
                );
              }
              if (_selectedGradeLevel.value.isEmpty) {
                _selectedGradeLevel.value = data.filters?.gradeLevel ?? 'All';
              }
              if (_selectedTimePeriod.value.isEmpty) {
                _selectedTimePeriod.value = data.filters?.timePeriod ?? 'Today';
              }
              if (_selectedSubject.value.isEmpty) {
                _selectedSubject.value = data.filters?.subject ?? 'All';
              }
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStatCardsRow(data),
                    const SizedBox(height: 16),
                    _buildSubjectCompletionSection(data),
                    const SizedBox(height: 16),
                    _buildBottomChartsRow(data),
                    const SizedBox(height: 24),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  //  TOP BAR
  // ═══════════════════════════════════════════════════════════════
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
                    child: (teacher?.name ?? '').isNotEmpty &&
                            (teacher?.picture?.url ?? '').isNotEmpty
                        ? Image.network(
                            teacher?.picture?.url ?? '',
                            height: 44,
                            width: 44,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) =>
                                _buildFallbackAvatar(),
                          )
                        : _buildFallbackAvatar(),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  //  STAT CARDS ROW
  // ═══════════════════════════════════════════════════════════════
  Widget _buildStatCardsRow(TeacherDashboardResponse data) {
    final counters =
        _dashboardController.initialCounters.value ?? data.counters;
    return Row(
      children: [
        Expanded(
          child: _StatCard(
            title: 'Total Students',
            value: (counters?.totalStudents ?? 0).toString(),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _StatCard(
            title: 'Total Hours',
            value: (counters?.totalSubjects ?? 0).toString(),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _StatCard(
            title: 'Lessons Completed',
            value: (counters?.lessonCompleted ?? 0).toString(),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _StatCard(
            title: 'Quizzes Completed',
            value: (counters?.quizCompleted ?? 0).toString(),
          ),
        ),
      ],
    );
  }

  // ═══════════════════════════════════════════════════════════════
  //  SUBJECT COMPLETION OVERVIEW (area chart)
  // ═══════════════════════════════════════════════════════════════
  Widget _buildSubjectCompletionSection(TeacherDashboardResponse data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Monthly Lessons Completed',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: _buildTimePeriodSelector(data)),
            const SizedBox(width: 12),
            Expanded(child: _buildGradeLevelSelector(data)),
            const SizedBox(width: 12),
            Expanded(child: _buildDropdown(data)),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          height: 590,
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(8, 24, 16, 8),
          decoration: BoxDecoration(
            color: const Color(0xFFDCF8CD),
            borderRadius: BorderRadius.circular(8),
          ),
          child: _buildAreaChart(data),
        ),
      ],
    );
  }

  String _mapSubjectName(String name) {
    final l = name.toLowerCase();
    if (l.contains('social study') ||
        l.contains('social science') ||
        l.contains('social studies')) return 'Social Studies';
    // Must check 'religious' BEFORE 'science' to avoid a false 'Science' match
    if (l.contains('rme') || l.contains('religious')) return 'RME';
    if (l.contains('science')) return 'Science';
    if (l.contains('english')) return 'English';
    if (l.contains('math')) return 'Math';
    return name;
  }

  /// Maps the UI subject label (which may contain '\n') to the internal
  /// normalised name used for chart filtering.
  String _uiSubjectToNormalised(String uiSubject) {
    final l = uiSubject.replaceAll('\n', ' ').toLowerCase();
    if (l.contains('religious')) return 'RME';
    if (l.contains('social')) return 'Social Studies';
    if (l.contains('science')) return 'Science';
    if (l.contains('english')) return 'English';
    if (l.contains('math')) return 'Math';
    if (l == 'all') return 'All';
    return uiSubject;
  }

  Widget _buildFallbackAvatar() {
    return Container(
      height: 44,
      width: 44,
      color: const Color(0xFF019E2E).withOpacity(0.1),
      child: const Icon(
        Icons.person,
        color: Color(0xFF019E2E),
        size: 24,
      ),
    );
  }

  String _mapToApiSubject(String friendlyName) {
    if (friendlyName.toLowerCase() == 'all') return 'All';
    if (friendlyName == 'Social Studies') return 'Social Studies';
    if (friendlyName.replaceAll('\n', ' ') == 'Religious and Moral Studies') {
      return 'Religious and Moral Education';
    }
    return friendlyName;
  }

  Widget _buildDropdown(TeacherDashboardResponse data) {
    final List<String> subjects = [
      'English',
      'Math',
      'Social Studies',
      'Science',
      'Religious and Moral\nStudies',
      'All'
    ];

    if (!subjects.contains(_selectedSubject.value)) {
      if (_selectedSubject.value == 'RME') {
        Future.microtask(
            () => _selectedSubject.value = 'Religious and Moral\nStudies');
      } else if (_selectedSubject.value == 'ALL') {
        Future.microtask(() => _selectedSubject.value = 'All');
      } else if (_selectedSubject.value == 'Religious and Moral Education') {
        Future.microtask(
            () => _selectedSubject.value = 'Religious and Moral\nStudies');
      } else if (_selectedSubject.value == 'Social Science') {
        Future.microtask(() => _selectedSubject.value = 'Social Studies');
      } else if (_selectedSubject.value == 'Mathematics') {
        Future.microtask(() => _selectedSubject.value = 'Math');
      } else if (_selectedSubject.value.isEmpty) {
        Future.microtask(() => _selectedSubject.value = 'All');
      }
    }

    return _buildSelectionDropdown(
      selectedValue: _selectedSubject,
      items: subjects,
      onSelected: (String result) async {
        _selectedSubject.value = result;
        final apiSubject = _mapToApiSubject(result);
        await _dashboardController.fetchDashboard(
          gradeLevel: _selectedGradeLevel.value,
          timePeriod: _selectedTimePeriod.value,
          subject: apiSubject,
        );
      },
    );
  }

  Widget _buildTimePeriodSelector(TeacherDashboardResponse data) {
    final periods = (data.filters?.timePeriods ?? []).isNotEmpty
        ? data.filters!.timePeriods!
        : _timePeriods;

    if (periods.isNotEmpty && !periods.contains(_selectedTimePeriod.value)) {
      Future.microtask(() => _selectedTimePeriod.value = periods.first);
    }

    return _buildSelectionDropdown(
      selectedValue: _selectedTimePeriod,
      items: periods,
      onSelected: (String result) async {
        _selectedTimePeriod.value = result;
        await _dashboardController.fetchDashboard(
          gradeLevel: _selectedGradeLevel.value,
          timePeriod: result,
          subject: _mapToApiSubject(_selectedSubject.value),
        );
      },
    );
  }

  Widget _buildGradeLevelSelector(TeacherDashboardResponse data) {
    final grades = ((data.filters?.gradeLevels ?? []).isNotEmpty
            ? data.filters!.gradeLevels!
            : _gradeLevels)
        .map((grade) => grade.toUpperCase() == 'ALL' ? 'All' : grade)
        .toList();

    if (grades.isNotEmpty && !grades.contains(_selectedGradeLevel.value)) {
      Future.microtask(() => _selectedGradeLevel.value = grades.first);
    }

    return _buildSelectionDropdown(
      selectedValue: _selectedGradeLevel,
      items: grades,
      onSelected: (String result) async {
        _selectedGradeLevel.value = result;
        await _dashboardController.fetchDashboard(
          gradeLevel: result,
          timePeriod: _selectedTimePeriod.value,
          subject: _mapToApiSubject(_selectedSubject.value),
        );
      },
    );
  }

  Widget _buildSelectionDropdown({
    required RxString selectedValue,
    required List<String> items,
    required void Function(String) onSelected,
  }) {
    return Obx(
      () => PopupMenuButton<String>(
        onSelected: onSelected,
        position: PopupMenuPosition.under,
        color: const Color(0xFFF0F5E1),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: Colors.grey, width: 1),
        ),
        offset: const Offset(0, 4),
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context) {
          return items.map((String choice) {
            return PopupMenuItem<String>(
              value: choice,
              padding: EdgeInsets.zero,
              height: 48,
              child: Container(
                width: 220,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: const Color(0xFF019E2E),
                    width: 1,
                  ),
                ),
                child: Text(
                  choice,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
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
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  selectedValue.value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAreaChart(TeacherDashboardResponse data) {
    final overviews = data.charts?.subjectOverview ?? [];

    // Map the API data into a standard 12-month calendar (0=Jan, 11=Dec)
    final monthsData = List<double>.filled(12, 0.0);
    final monthAverages = List<double>.filled(12, 0.0);
    final monthLabels = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'June',
      'July',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    for (var item in overviews) {
      final label = (item.label ?? '').trim().toLowerCase();
      final key = (item.key ?? '').trim();
      int? index;

      // 1. Try to find month name in label
      if (label.contains('jan'))
        index = 0;
      else if (label.contains('feb'))
        index = 1;
      else if (label.contains('mar'))
        index = 2;
      else if (label.contains('apr'))
        index = 3;
      else if (label.contains('may'))
        index = 4;
      else if (label.contains('jun'))
        index = 5;
      else if (label.contains('jul'))
        index = 6;
      else if (label.contains('aug'))
        index = 7;
      else if (label.contains('sep'))
        index = 8;
      else if (label.contains('oct'))
        index = 9;
      else if (label.contains('nov'))
        index = 10;
      else if (label.contains('dec')) index = 11;

      // 2. Try to parse the key date (YYYY-MM-DD or YYYY-MM)
      if (index == null && key.isNotEmpty) {
        try {
          final parts = key.split('-');
          if (parts.length >= 2) {
            final monthStr = parts[1];
            final month = int.tryParse(monthStr);
            if (month != null && month >= 1 && month <= 12) {
              index = month - 1;
            }
          }
        } catch (_) {}
      }

      if (index != null) {
        // Capture value from 'total' OR 'completed' (backend fallback)
        final val = (item.total?.toDouble() ?? 0.0) +
            (item.toJson()['completed']?.toDouble() ?? 0.0);
        monthsData[index] += val;

        final score = (item.avgQuizScore?.toDouble() ?? 0.0) +
            (item.toJson()['avgQuizScore']?.toDouble() ?? 0.0);
        if (score > 0) monthAverages[index] = score;
      }
    }

    final spots = List.generate(12, (i) => FlSpot(i.toDouble(), monthsData[i]));

    // Specific Y-axis ticks requested: 0, 100, 500, 1000, 2000, 3000
    const yTicks = [0.0, 100.0, 500.0, 1000.0, 2000.0, 3000.0];
    const double maxY = 3000;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF1F8E9), // Light mint green background
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.only(top: 20, right: 20, left: 10, bottom: 10),
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: maxY,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            horizontalInterval: 1,
            verticalInterval: 1,
            checkToShowHorizontalLine: (value) => yTicks.contains(value),
            getDrawingHorizontalLine: (_) => const FlLine(
              color: Color(0xFFC5E1A5), // Light green dashed lines
              strokeWidth: 1,
              dashArray: [6, 4],
            ),
            getDrawingVerticalLine: (_) => const FlLine(
              color: Color(0xFFC5E1A5),
              strokeWidth: 1,
              dashArray: [6, 4],
            ),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: 1,
                getTitlesWidget: (value, _) {
                  if (!yTicks.contains(value)) return const SizedBox.shrink();
                  return Text(
                    value.toInt().toString(),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF558B2F),
                      fontWeight: FontWeight.w400,
                    ),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24,
                interval: 1,
                getTitlesWidget: (value, _) {
                  final index = value.toInt();
                  if (index >= 0 && index < 12) {
                    return Text(
                      monthLabels[index],
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF558B2F),
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            topTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(show: false),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => Colors.white.withOpacity(0.95),
              tooltipBorder:
                  const BorderSide(color: Color(0xFF2E7D32), width: 1),
              tooltipPadding: const EdgeInsets.all(12),
              getTooltipItems: (spots) => spots.map((s) {
                final index = s.x.toInt();
                final score = monthAverages[index];
                return LineTooltipItem(
                  '${monthLabels[index]} 2026\n',
                  GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'complete: Strand 1\n',
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF2E7D32), fontSize: 11),
                    ),
                    TextSpan(
                      text: 'Total Lessons: ',
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF2E7D32),
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '${s.y.toInt()}\n',
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF7B1FA2),
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Quiz Score: ',
                      style:
                          GoogleFonts.poppins(color: const Color(0xFF2E7D32)),
                    ),
                    TextSpan(
                      text: '${score.toStringAsFixed(1)}%',
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF7B1FA2),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              }).toList(),
            ),
            getTouchedSpotIndicator: (_, spots) {
              return spots.map((_) {
                return TouchedSpotIndicatorData(
                  const FlLine(color: Color(0xFF1B5E20), strokeWidth: 2),
                  FlDotData(
                    show: true,
                    getDotPainter: (spot, percent, bar, index) {
                      return FlDotCirclePainter(
                        radius: 5,
                        color: Colors.white,
                        strokeWidth: 2,
                        strokeColor: const Color(0xFF1B5E20),
                      );
                    },
                  ),
                );
              }).toList();
            },
          ),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              curveSmoothness: 0.35,
              color: const Color(0xFF1B5E20),
              barWidth: 3,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF1B5E20).withOpacity(0.5),
                    const Color(0xFF1B5E20).withOpacity(0.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════
  //  BOTTOM CHARTS ROW
  // ═══════════════════════════════════════════════════════════════
  Widget _buildBottomChartsRow(TeacherDashboardResponse data) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _buildDonutChartCard(data)),
        const SizedBox(width: 20),
        Expanded(child: _buildBarChartCard(data)),
      ],
    );
  }

  Color _getChartColor(String? subject) {
    final s = (subject ?? '').toLowerCase();
    if (s.contains('social')) return const Color(0xFFFF9500);
    if (s.contains('science')) return const Color(0xFFF8D700);
    if (s.contains('english')) return const Color(0xFFA533F1);
    if (s.contains('math')) return const Color(0xFF0061D7);
    if (s.contains('rme') || s.contains('religious'))
      return const Color(0xFF4CAF50);
    return Colors.grey;
  }

  // ── Donut chart ──
  Widget _buildDonutChartCard(TeacherDashboardResponse data) {
    // Use ONLY subjectMetrics from the API — no fallbacks.
    final selectedSubjectNormalised =
        _uiSubjectToNormalised(_selectedSubject.value);
    final metrics = (data.charts?.subjectMetrics ?? [])
        .map((m) => SubjectMetric(
              subject: _mapSubjectName(m.subject ?? ''),
              avgDailyHours: m.avgDailyHours ?? 0.0,
              avgQuizScore: m.avgQuizScore ?? 0.0,
            ))
        .where((m) =>
            selectedSubjectNormalised == 'All' ||
            m.subject == selectedSubjectNormalised)
        .toList();

    return Container(
      width: 388,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: _cardBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Subject Activity',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'See where students are spending their time',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6C6C6C),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 242,
            child: metrics.isEmpty
                ? const Center(
                    child: Text(
                      'No subject activity data available',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                  )
                : PieChart(
                    PieChartData(
                      centerSpaceRadius: 50,
                      sections: List.generate(metrics.length, (i) {
                        final val = metrics[i].avgDailyHours ?? 0.0;
                        return PieChartSectionData(
                          value: val > 0 ? val : 1,
                          color: _getChartColor(metrics[i].subject),
                          radius: 45,
                          showTitle: false,
                        );
                      }),
                    ),
                  ),
          ),
          if (metrics.isNotEmpty) ...[
            const SizedBox(height: 20),
            Wrap(
              spacing: 30.5,
              runSpacing: 8,
              children: List.generate(metrics.length, (i) {
                return _LegendDot(
                  color: _getChartColor(metrics[i].subject),
                  label: metrics[i].subject ?? '',
                );
              }),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildBarChartCard(TeacherDashboardResponse data) {
    // Use ONLY weeklyStudents from the API — no static day mapping, no mock values.
    final weeklyStudents = data.charts?.weeklyStudents ?? [];

    if (weeklyStudents.isEmpty) {
      return Container(
        height: 520,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFFFFFFF), width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'No weekly student data available',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
      );
    }

    // Map each API weeklyStudent item to its day-of-week index.
    // Sun=0, Mon=1, Tue=2, Wed=3, Thu=4, Fri=5, Sat=6
    const days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    final dayValues = List<double>.filled(7, 0.0);

    for (var w in weeklyStudents) {
      final label = w.label ?? '';
      final dateStr = w.date ?? '';
      final text = (label.isNotEmpty ? label : dateStr).toLowerCase();
      int dayIndex = -1;

      if (text.contains('sun'))
        dayIndex = 0;
      else if (text.contains('mon'))
        dayIndex = 1;
      else if (text.contains('tue'))
        dayIndex = 2;
      else if (text.contains('wed'))
        dayIndex = 3;
      else if (text.contains('thu'))
        dayIndex = 4;
      else if (text.contains('fri'))
        dayIndex = 5;
      else if (text.contains('sat')) dayIndex = 6;

      // Fallback: try to parse as ISO date, use weekday
      if (dayIndex == -1 && dateStr.isNotEmpty) {
        try {
          final parsed = DateTime.parse(dateStr);
          // DateTime.weekday: 1=Mon ... 7=Sun → map to Sun=0..Sat=6
          dayIndex = parsed.weekday % 7;
        } catch (_) {}
      }

      if (dayIndex >= 0 && dayIndex < 7) {
        // Use hours field if available (yielding "Average Student Hours"), fallback to total
        dayValues[dayIndex] = (w.total ?? (w.total ?? 0).toDouble());
      }
    }

    double maxVal = 0;
    for (final v in dayValues) {
      if (v > maxVal) maxVal = v;
    }
    if (maxVal == 0) maxVal = 100;

    final colors = [
      const Color(0xFFFFC34D).withOpacity(0.20),
      const Color(0xFF709FFF).withOpacity(0.20),
      const Color(0xFF2ABD1D).withOpacity(0.20),
      const Color(0xFFFF76CE).withOpacity(0.20),
      const Color(0xFF9AD39E).withOpacity(0.20),
      const Color(0xFF8979FF).withOpacity(0.20),
      const Color(0xFFA41BFF).withOpacity(0.20),
    ];

    final barGroups = List.generate(7, (i) {
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: dayValues[i],
            color: colors[i % colors.length],
            width: 32,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: maxVal,
              color: Colors.grey.withOpacity(0.08),
            ),
          ),
        ],
      );
    });

    return Container(
      height: 520,
      width: 692,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFFFFFFF), width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Past 7 Days Average Student Hours',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 4),
          // const Text(
          //   'See your students per week',
          //   style: TextStyle(
          //     fontSize: 16,
          //     fontWeight: FontWeight.w400,
          //     color: Color(0xFF6C6C6C),
          //   ),
          // ),
          const SizedBox(height: 24),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                minY: 0,
                barTouchData: BarTouchData(enabled: false),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: maxVal / 5,
                  getDrawingHorizontalLine: (value) => const FlLine(
                    color: Color(0xFFD9D9DD),
                    strokeWidth: 1,
                    dashArray: [4, 4],
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      interval: maxVal / 5,
                      getTitlesWidget: (value, meta) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            value.toInt().toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 36,
                      getTitlesWidget: (value, meta) {
                        final index = value.toInt();
                        if (index >= 0 && index < 7) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              days[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                color: const Color(0xFF000000).withOpacity(0.7),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: barGroups,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String? change;

  const _StatCard({
    required this.title,
    required this.value,
    this.change,
  });

  @override
  Widget build(BuildContext context) {
    final hasChange = change != null && change!.isNotEmpty;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFCECECE)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF349801),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF349801),
                ),
              ),
              if (hasChange) ...[
                const Spacer(),
                Text(
                  change!,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFCE7800),
                  ),
                ),
                const SizedBox(width: 2),
                const Icon(
                  Icons.arrow_upward,
                  size: 14,
                  color: Color(0xFFCE7800),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

// ── Legend Dot Widget (uncommented / added here) ──
class _LegendDot extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendDot({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12.5,
            color: Color(0xFF000000),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
