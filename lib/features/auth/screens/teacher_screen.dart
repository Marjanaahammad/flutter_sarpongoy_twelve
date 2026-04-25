import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../profile/screens/profile_screen.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBF9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Top Bar ──────────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    children: [
                      // Greeting
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Welcome back,',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6B6B6B),
                              ),
                            ),
                            Text(
                              'Teacher 👋',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF003D81),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Avatar
                      GestureDetector(
                        onTap: () => Get.to(() => ProfileScreen()),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/00f9997dc3c8cbb22e5eae2f0a40bcc0e9a215b6.jpg',
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/mingcute_notification-fill.png',
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                // ── Banner Card ──────────────────────────────────────────
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 28,
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF0A4390), Color(0xFF1E88E5)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Teacher Dashboard',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Manage your classes, track student\nprogress and set assignments.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                // ── Section Title ─────────────────────────────────────────
                const Text(
                  'Quick Actions',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF003D81),
                  ),
                ),

                const SizedBox(height: 16),

                // ── Quick Action Cards ────────────────────────────────────
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.15,
                  children: [
                    _actionCard(
                      icon: Icons.class_rounded,
                      label: 'My Classes',
                      color: const Color(0xFFE3F2FD),
                      iconColor: const Color(0xFF1565C0),
                    ),
                    _actionCard(
                      icon: Icons.assignment_rounded,
                      label: 'Assignments',
                      color: const Color(0xFFFCE4EC),
                      iconColor: const Color(0xFFC62828),
                    ),
                    _actionCard(
                      icon: Icons.bar_chart_rounded,
                      label: 'Student Progress',
                      color: const Color(0xFFE8F5E9),
                      iconColor: const Color(0xFF2E7D32),
                    ),
                    _actionCard(
                      icon: Icons.schedule_rounded,
                      label: 'Schedule',
                      color: const Color(0xFFFFF3E0),
                      iconColor: const Color(0xFFE65100),
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                // ── Recent Activity Section ────────────────────────────────
                const Text(
                  'Recent Activity',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF003D81),
                  ),
                ),

                const SizedBox(height: 16),

                _activityTile(
                  icon: Icons.check_circle_rounded,
                  iconColor: const Color(0xFF2E7D32),
                  title: 'Assignment graded',
                  subtitle: 'Math – Class 5A · Today',
                ),
                _activityTile(
                  icon: Icons.notifications_rounded,
                  iconColor: const Color(0xFF0A4390),
                  title: 'New student enrolled',
                  subtitle: 'Science – Class 4B · Yesterday',
                ),
                _activityTile(
                  icon: Icons.message_rounded,
                  iconColor: const Color(0xFFF97316),
                  title: 'Parent message received',
                  subtitle: 'English – Class 6A · 2 days ago',
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _actionCard({
    required IconData icon,
    required String label,
    required Color color,
    required Color iconColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: iconColor),
          const SizedBox(height: 12),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _activityTile({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(blurRadius: 4, color: Colors.black.withOpacity(0.08)),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 32),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6B6B6B),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
