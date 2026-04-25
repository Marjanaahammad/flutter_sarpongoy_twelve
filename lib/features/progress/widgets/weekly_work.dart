import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: WeeklyWorkScreen()));

class WeeklyWorkScreen extends StatelessWidget {
  const WeeklyWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for the table
    final List<Map<String, dynamic>> workData = [
      {'subject': 'Social', 'color': Colors.orange, 'practice': '26/30', 'strand': 'Strand 1', 'quiz': '40/40'},
      {'subject': 'English', 'color': Colors.purple, 'practice': '26/30', 'strand': 'Strand 1', 'quiz': '40/40'},
      {'subject': 'Science', 'color': Colors.teal, 'practice': '26/30', 'strand': 'Strand 1', 'quiz': '40/40'},
      {'subject': 'RME', 'color': Colors.amber, 'practice': '26/30', 'strand': 'Strand 1', 'quiz': '40/40'},
      {'subject': 'Math', 'color': Colors.blue, 'practice': '26/30', 'strand': 'Strand 1', 'quiz': '40/40'},
    ];

    return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.green.shade200, width: 2),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header Row
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Weekly Work',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            Text('Weekly'),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Table Columns
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Expanded(child: Text('Subject', style: TextStyle(fontWeight: FontWeight.bold))),
                      Expanded(child: Center(child: Text('Practice', style: TextStyle(fontWeight: FontWeight.bold)))),
                      Expanded(child: Center(child: Text('Strand', style: TextStyle(fontWeight: FontWeight.bold)))),
                      Expanded(child: Align(alignment: Alignment.centerRight, child: Text('Quiz', style: TextStyle(fontWeight: FontWeight.bold)))),
                    ],
                  ),
                ),
                const Divider(height: 32, indent: 24, endIndent: 24),

                // Data Rows
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: workData.length,
                  separatorBuilder: (context, index) => const Divider(height: 32, indent: 24, endIndent: 24),
                  itemBuilder: (context, index) {
                    final item = workData[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              item['subject'],
                              style: TextStyle(color: item['color'], fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(child: Center(child: Text(item['practice']))),
                          Expanded(child: Center(child: Text(item['strand']))),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(item['quiz']),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ));
  }
}