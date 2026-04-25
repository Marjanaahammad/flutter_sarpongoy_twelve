import 'package:flutter/material.dart';

class HomeSidebar extends StatefulWidget {
  const HomeSidebar({super.key});

  @override
  State<HomeSidebar> createState() => _HomeSidebarState();
}

class _HomeSidebarState extends State<HomeSidebar> {
  int selectedIndex = 0;

  final List<_Strand> strands = [
    _Strand(
      title: "Strand 1",
      subtitle: "God, his creation and attributes",
      completed: true,
    ),
    _Strand(
      title: "Strand 2",
      subtitle: "Timetable and Distribution",
      completed: true,
    ),
    _Strand(
      title: "Strand 3",
      subtitle: "Multiplication and Division",
      locked: true,
    ),
    _Strand(title: "Strand 4", subtitle: "Word problem", locked: true),
    _Strand(title: "BECE", subtitle: "Geometry", locked: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: const Color(0xFFDDE5CF),
            child: NavigationRail(
              minExtendedWidth: 180,
              backgroundColor: const Color(0xFFDDE5CF),
              selectedIndex: selectedIndex,
              onDestinationSelected: (index) {
                if (!strands[index].locked) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              extended: true,
              leading: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.menu_book, color: Colors.green, size: 36),
                      SizedBox(height: 8),
                      Text(
                        "Religious & Moral\nEducation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              destinations: List.generate(strands.length, (index) {
                final strand = strands[index];

                IconData icon;
                Color iconColor;

                if (strand.locked) {
                  icon = Icons.lock;
                  iconColor = Colors.grey;
                } else if (strand.completed) {
                  icon = Icons.check_circle;
                  iconColor = Colors.green;
                } else {
                  icon = Icons.circle_outlined;
                  iconColor = Colors.grey;
                }

                return NavigationRailDestination(
                  icon: Icon(icon, color: iconColor),
                  selectedIcon: Icon(
                    icon,
                    color: strand.locked ? Colors.grey : Colors.green,
                  ),
                  label: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        strand.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == index
                              ? Colors.green
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        strand.subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),

          // Right Content Area
          Expanded(
            child: Center(
              child: Text(
                "Selected: ${strands[selectedIndex].title}",
                style: const TextStyle(fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Strand {
  final String title;
  final String subtitle;
  final bool completed;
  final bool locked;

  _Strand({
    required this.title,
    required this.subtitle,
    this.completed = false,
    this.locked = false,
  });
}
