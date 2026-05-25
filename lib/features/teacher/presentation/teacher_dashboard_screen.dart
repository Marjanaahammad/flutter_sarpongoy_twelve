import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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

  // ───────── colour palette ─────────
  static const _green = Color(0xFF019E2E);
  static const _cardBorder = Color(0xFFE0E0E0);

  final RxString _selectedSubject = 'English'.obs;

  @override
  void initState() {
    super.initState();
    _profileController = Get.put(TeacherProfileController());
    _dashboardController = Get.put(TeacherDashboardController());

    // Fetch profile and dashboard if not already loaded
    if (_profileController.userInfo.value == null) {
      _profileController.fetchProfile();
    }
    _dashboardController.fetchDashboard();
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
                    child: teacher?.picture?.url != null
                        ? Image.network(
                            teacher!.picture!.url!,
                            height: 44,
                            width: 44,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                                  'assets/images/avatarIcon.png',
                                  height: 44,
                                  width: 44,
                                  fit: BoxFit.cover,
                                ),
                          )
                        : Image.asset(
                            'assets/images/avatarIcon.png',
                            height: 44,
                            width: 44,
                            fit: BoxFit.cover,
                          ),
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
    final counters = data.counters;
    return Row(
      children: [
        Expanded(
          child: _StatCard(
            title: 'Total Students',
            value: (counters?.totalStudents ?? 0).toString(),
            change: '+${counters?.totalStudentsGrowth ?? 0}%',
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _StatCard(
            title: 'Total Subjects',
            value: (counters?.totalSubjects ?? 0).toString(),
            change: '+${counters?.totalSubjectsGrowth ?? 0}%',
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _StatCard(
            title: 'Lesson Completed',
            value: (counters?.lessonCompleted ?? 0).toString(),
            change: '+${counters?.lessonCompletedGrowth ?? 0}%',
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _StatCard(
            title: 'Quiz Completed',
            value: (counters?.quizCompleted ?? 0).toString(),
            change: '+${counters?.quizCompletedGrowth ?? 0}%',
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
        Row(
          children: [
            Expanded(
              child: Text(
                'Subject completion Overview',
                style: TextStyle(
                  fontSize: 28, // Slightly reduced to fit more screens
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            const SizedBox(width: 8),
            _buildDropdown(data),
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
          child: Obx(() => _buildAreaChart(data)),
        ),
      ],
    );
  }

  Widget _buildDropdown(TeacherDashboardResponse data) {
    final subjects = (data.charts?.subjectOverview ?? [])
        .map((e) => e.subject ?? '')
        .where((s) => s.isNotEmpty)
        .toList();

    // Ensure the selected subject is valid or reset to the first one available
    if (subjects.isNotEmpty && !subjects.contains(_selectedSubject.value)) {
      Future.microtask(() => _selectedSubject.value = subjects.first);
    }

    return PopupMenuButton<String>(
      onSelected: (String result) {
        _selectedSubject.value = result;
        // You can also add logic here to filter the area chart data based on result
      },
      position: PopupMenuPosition.under,
      color: Color(0xFFF0F5E1), // Dark background for the popup menu
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: const BorderSide(color: Colors.grey, width: 1),
      ),
      offset: const Offset(0, 4), // Small gap below the button
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context) {
        return subjects.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            padding: EdgeInsets.zero,
            height: 48,
            child: Container(
              width: 280, // slightly wider to accommodate padding
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: const Color(0xFF019E2E), // 👈 green border like image
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
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _selectedSubject.value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
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
    double transformValue(double value) {
      if (value <= 0) return 0.0;
      if (value <= 100) return value / 100.0;
      if (value <= 500) return 1.0 + (value - 100) / 400.0;
      if (value <= 1000) return 2.0 + (value - 500) / 500.0;
      if (value <= 2000) return 3.0 + (value - 1000) / 1000.0;
      if (value <= 3000) return 4.0 + (value - 2000) / 1000.0;
      return 5.0 + (value - 3000) / 1000.0;
    }

    double asDouble(dynamic value) {
      if (value == null) return 0.0;
      if (value is num) return value.toDouble();
      return double.tryParse(value.toString()) ?? 0.0;
    }

    final trend = data.charts?.monthlyCompletionTrend ?? [];
    final selectedSubjectKey = _selectedSubject.value;
    const months = [
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
      'Dec',
    ];

    final spots = List.generate(12, (index) {
      final monthName = months[index];
      final monthNumber = index + 1;

      var completed = 0.0;
      for (final monthTrend in trend) {
        final isSameMonth =
            monthTrend.monthNumber == monthNumber ||
            monthTrend.month == monthName;
        if (!isSameMonth) continue;

        if (monthTrend.subject == selectedSubjectKey) {
          completed += asDouble(monthTrend.completed);
        } else if (monthTrend.subjects != null) {
          completed += asDouble(monthTrend.subjects![selectedSubjectKey]);
        }
      }

      return FlSpot(index.toDouble(), transformValue(completed));
    });

    return LineChart(
      LineChartData(
        minY: 0,
        maxY: 5,
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          horizontalInterval: 1,
          verticalInterval: 1,
          getDrawingHorizontalLine: (_) => FlLine(
            color: const Color(0xFFC6CDC3),
            strokeWidth: 1,
            dashArray: [8, 8],
          ),
          getDrawingVerticalLine: (_) => FlLine(
            color: const Color(0xFFC6CDC3),
            strokeWidth: 1,
            dashArray: [8, 8],
          ),
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 48,
              interval: 1,
              getTitlesWidget: (v, _) {
                String label;
                switch (v.toInt()) {
                  case 0:
                    label = '0';
                    break;
                  case 1:
                    label = '100';
                    break;
                  case 2:
                    label = '500';
                    break;
                  case 3:
                    label = '1000';
                    break;
                  case 4:
                    label = '2000';
                    break;
                  case 5:
                    label = '3000';
                    break;
                  default:
                    return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF575757),
                      fontWeight: FontWeight.w400,
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
              getTitlesWidget: (v, _) {
                const months = [
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
                  'Dec',
                ];
                if (v.toInt() >= 0 && v.toInt() < months.length) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      months[v.toInt()],
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF575757),
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
        lineTouchData: LineTouchData(
          getTouchedSpotIndicator: (_, spots) {
            return spots.map((_) {
              return TouchedSpotIndicatorData(
                const FlLine(color: Color(0xFF019E2E), strokeWidth: 1.5),
                FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, bar, index) {
                    return FlDotCirclePainter(
                      radius: 6,
                      color: Colors.white,
                      strokeWidth: 2.5,
                      strokeColor: const Color(0xFF019E2E),
                    );
                  },
                ),
              );
            }).toList();
          },
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (_) => Colors.white.withValues(alpha: 0.95),
            tooltipPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            tooltipBorder: const BorderSide(color: Color(0xFF019E2E), width: 1),
            getTooltipItems: (spots) => spots.map((s) {
              final monthIndex = s.x.toInt();
              final monthName = months[monthIndex];

              // Find if there's a milestone for this month
              final milestone = data.charts?.milestone;
              bool hasMilestone = false;
              if (milestone?.date != null) {
                try {
                  final milestoneDate = DateTime.parse(milestone!.date!);
                  final milestoneMonth = months[milestoneDate.month - 1];
                  if (milestoneMonth == monthName) {
                    hasMilestone = true;
                  }
                } catch (_) {}
              }

              const _purple = Color(0xFFA533F1);
              const _textGreen = Color(0xFF019E2E);

              if (hasMilestone) {
                return LineTooltipItem(
                  '             $monthName 2026\n',
                  GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                  children: [
                    TextSpan(
                      text: 'complete: ',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: _textGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '${milestone?.strand} (${milestone?.subStrand})\n',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: _purple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'lesson: ',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: _textGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '${milestone?.lesson}\n',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: _purple,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'Progress: ',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: _textGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '${(s.y * 100).toInt()}%',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: _purple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              } else {
                return LineTooltipItem(
                  '             $monthName 2026\n',
                  GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                  children: [
                    TextSpan(
                      text: 'Completion: ',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: _textGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '${(s.y * 100).toInt()}%',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: _purple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              }
            }).toList(),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            curveSmoothness: 0.3,
            color: const Color(0xFF1B7A3D),
            barWidth: 3,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF1B7A3D).withValues(alpha: 0.8),
                  const Color(0xFF1B7A3D).withValues(alpha: 0.0),
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
        ],
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

  // ── Donut chart ──
  Widget _buildDonutChartCard(TeacherDashboardResponse data) {
    final subjects = data.charts?.subjectOverview ?? [];
    final defaultColors = [
      const Color(0xFFA533F1),
      const Color(0xFF0061D7),
      const Color(0xFFF8D700),
      const Color(0xFFFF9500),
      const Color(0xFF4CAF50),
    ];

    return Container(
      // height: 493,
      width: 388,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: _cardBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Subject',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'See which subject is enjoyable for students',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6C6C6C),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 242,
            child: PieChart(
              PieChartData(
                centerSpaceRadius: 50,
                sections: subjects.isEmpty
                    ? [
                        PieChartSectionData(
                          value: 1,
                          color: Colors.grey,
                          radius: 45,
                          showTitle: false,
                        ),
                      ]
                    : List.generate(subjects.length, (i) {
                        final val = (subjects[i].completed ?? 0).toDouble();
                        return PieChartSectionData(
                          value: val > 0 ? val : 1,
                          color: defaultColors[i % defaultColors.length],
                          radius: 45,
                          showTitle: false,
                        );
                      }),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 30.5,
            runSpacing: 8,
            children: List.generate(subjects.length, (i) {
              return _LegendDot(
                color: defaultColors[i % defaultColors.length],
                label: subjects[i].subject ?? '',
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildBarChartCard(TeacherDashboardResponse data) {
    double maxVal = 100.0;
    for (var w in data.charts?.weeklyStudents ?? []) {
      final t = (w.total ?? 0).toDouble();
      if (t > maxVal) maxVal = t;
    }
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
          Text(
            'Total Students',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'See your students per week',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF6C6C6C),
            ),
          ),
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
                  horizontalInterval: 20,
                  getDrawingHorizontalLine: (value) => FlLine(
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
                      interval: 20,
                      getTitlesWidget: (value, meta) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            value.toInt().toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF000000), // 👈 All values black
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
                        const days = [
                          'Sun',
                          'Mon',
                          'Tue',
                          'Wed',
                          'Thu',
                          'Fri',
                          'Sat',
                        ];
                        if (value.toInt() >= 0 && value.toInt() < days.length) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              days[value.toInt()],
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF000000).withOpacity(0.7),
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
                barGroups: _buildBarGroups(data, maxVal),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups(
    TeacherDashboardResponse data,
    double maxVal,
  ) {
    final colors = [
      const Color(0xFFFFC34D), // Sun
      const Color(0xFF709FFF), // Mon
      const Color(0xFF2ABD1D), // Tue
      const Color(0xFFFF76CE), // Wed
      const Color(0xFF9AD39E), // Thu
      const Color(0xFF8979FF), // Fri
      const Color(0xFFA41BFF), // Sat
    ];

    final List<double> values = List.filled(7, 0.0);
    for (var w in data.charts?.weeklyStudents ?? []) {
      final day = (w.day ?? '').toLowerCase();
      final total = (w.total ?? 0).toDouble();
      if (day.startsWith('sun'))
        values[0] = total;
      else if (day.startsWith('mon'))
        values[1] = total;
      else if (day.startsWith('tue'))
        values[2] = total;
      else if (day.startsWith('wed'))
        values[3] = total;
      else if (day.startsWith('thu'))
        values[4] = total;
      else if (day.startsWith('fri'))
        values[5] = total;
      else if (day.startsWith('sat'))
        values[6] = total;
    }

    return List.generate(7, (i) {
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: values[i],
            color: colors[i],
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
  }
}

// // ═══════════════════════════════════════════════════════════════
// //  STAT CARD WIDGET
// // ═══════════════════════════════════════════════════════════════
class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String change;

  const _StatCard({
    required this.title,
    required this.value,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
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
              const Spacer(),
              Text(
                change,
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
          style: TextStyle(
            fontSize: 12.5,
            color: Color(0xFF000000),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
