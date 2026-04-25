import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../sidebar/controller/sidebar_controller.dart';
import '../../home/models/course_model.dart';

class SubjectChartScreen extends StatelessWidget {
  final Course course;
  final String subtitle;
  final Color subjectColor;

  const SubjectChartScreen({
    super.key,
    required this.course,
    required this.subtitle,
    required this.subjectColor,
  });

  @override
  Widget build(BuildContext context) {
    final sidebarController = Get.find<SidebarController>();
    final stats = sidebarController.getSubjectActivityStats(course.title);
    final dailyStats = sidebarController.getSubjectDailyStats(course.title);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.black, size: 24),
                  ),
                ),
              ),
              // Header
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    // Back button

                    const SizedBox(height: 16),
                    // Course Image with badges
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                        ),
                        child: Image.asset(course.image, ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Title + Subtitle
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
                              fontSize: 16,
                              color: Color(0xFF555555),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Stats Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    _buildStatBox("Activity Count", stats["activityCount"].toString(), const Color(0xFF3CCFFF), Colors.black),
                    const SizedBox(width: 12),
                    _buildStatBox("Avg. Daily Hours", stats["avgDailyHours"].toString(), const Color(0xFFFFE6E9), Colors.black),
                    const SizedBox(width: 12),
                    _buildStatBox("Total Hours", stats["totalHours"].toString(), const Color(0xFFD3FFC2), Colors.black),
                    const SizedBox(width: 12),
                    _buildStatBox("Avg. Quiz Score", stats["avgQuizScore"].toString(), const Color(0xFFFFD899), Colors.black),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Chart Container
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: const Color(0xFFF0F0F0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      offset: const Offset(0, 4),
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 340,
                      child: Builder(builder: (context) {
                        final bars = [
                          _createLineBarData(dailyStats, "count", const Color(0xFF43D3FF)),
                          _createLineBarData(dailyStats, "dailyHours", const Color(0xFFFF4D67)),
                          _createLineBarData(dailyStats, "totalHours", const Color(0xFF99F517)),
                          _createLineBarData(dailyStats, "quizScore", const Color(0xFFFFB347)),
                        ];

                        return LineChart(
                          LineChartData(
                            lineTouchData: LineTouchData(
                              enabled: true,
                              touchTooltipData: LineTouchTooltipData(
                                getTooltipColor: (spot) => Colors.transparent,
                                tooltipRoundedRadius: 0,
                                tooltipPadding: const EdgeInsets.only(bottom: 12),
                                getTooltipItems: (List<LineBarSpot> touchedSpots) {
                                  return touchedSpots.map((spot) {
                                    return LineTooltipItem(
                                      spot.y.toStringAsFixed(0),
                                      const TextStyle(
                                        color: Color(0xFF555555),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    );
                                  }).toList();
                                },
                              ),
                            ),
                            showingTooltipIndicators: dailyStats.asMap().entries.map((entry) {
                              return ShowingTooltipIndicators(
                                List.generate(bars.length, (barIndex) {
                                  return LineBarSpot(
                                    bars[barIndex],
                                    barIndex,
                                    bars[barIndex].spots[entry.key],
                                  );
                                }),
                              );
                            }).toList(),
                            gridData: FlGridData(
                              show: true,
                              drawVerticalLine: true,
                              drawHorizontalLine: true,
                              checkToShowHorizontalLine: (value) => value % 20 == 0 && value > 0,
                              getDrawingHorizontalLine: (value) => FlLine(
                                color: const Color(0xFFE0E0E0),
                                strokeWidth: 1,
                                dashArray: [5, 5],
                              ),
                              getDrawingVerticalLine: (value) => FlLine(
                                color: const Color(0xFFE0E0E0).withOpacity(0.5),
                                strokeWidth: 1,
                                dashArray: [5, 5],
                              ),
                            ),
                            titlesData: FlTitlesData(
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, meta) {
                                    String text = '';
                                    if (value == 20) text = '0 - 39';
                                    else if (value == 40) text = '40-59';
                                    else if (value == 60) text = '59-79';
                                    else if (value == 80) text = '80-100';
                                    else return const SizedBox.shrink();
                                    return SideTitleWidget(
                                      axisSide: meta.axisSide,
                                      child: Text(
                                        text,
                                        style: const TextStyle(
                                          color: Color(0xFF555555),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    );
                                  },
                                  reservedSize: 72,
                                ),
                              ),
                              topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, meta) {
                                    if (value == -0.5) {
                                      return SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        space: 16,
                                        child: const Text(
                                          'Mark',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      );
                                    }
                                    final index = value.toInt();
                                    if (index >= 0 && index < dailyStats.length) {
                                      return SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        space: 12,
                                        child: Text(
                                          dailyStats[index]["day"],
                                          style: const TextStyle(
                                            color: Color(0xFF555555),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      );
                                    }
                                    return const SizedBox.shrink();
                                  },
                                  reservedSize: 52,
                                  interval: 1,
                                ),
                              ),
                            ),
                            borderData: FlBorderData(
                              show: true,
                              border: const Border(
                                bottom: BorderSide(color: Color(0xFF888888), width: 2),
                              ),
                            ),
                            minX: -0.5,
                            maxX: 6.5,
                            minY: 0,
                            maxY: 100,
                            lineBarsData: bars,
                          ),
                        );
                      }),
                    ),

                    const SizedBox(height: 32),

                    // Legend — 2x2 grid
                    Column(
                      children: [
                        Row(
                          children: [
                            _buildLegendItem("Activity Count", const Color(0xFF43D3FF)),
                            _buildLegendItem("Avg. Daily Hours", const Color(0xFFFF4D67)),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            _buildLegendItem("Total Hours", const Color(0xFF99F517)),
                            _buildLegendItem("Avg. Quiz Score", const Color(0xFFFFB347)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatBox(String label, String value, Color bgColor, Color textColor) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 6),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: textColor.withOpacity(0.75),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  LineChartBarData _createLineBarData(
    List<Map<String, dynamic>> dailyStats,
    String key,
    Color color,
  ) {
    return LineChartBarData(
      spots: dailyStats.asMap().entries.map((entry) {
        return FlSpot(
          entry.key.toDouble(),
          (entry.value[key] as num).toDouble(),
        );
      }).toList(),
      isCurved: true,
      color: color.withOpacity(0.5),
      barWidth: 3,
      dotData: FlDotData(
        show: true,
        getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
          radius: 7,
          color: color,
          strokeWidth: 3,
          strokeColor: Colors.white,
        ),
      ),
      belowBarData: BarAreaData(show: false),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF444444),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
