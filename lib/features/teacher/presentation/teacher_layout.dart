import 'package:flutter/material.dart';

import 'teacher_dashboard_screen.dart';
import 'student_overview_screen.dart';
import 'student_details_screen.dart';
import '../../teacher_profile/presentation/screens/teacher_profile_screen.dart';
import '../../teacher_profile/presentation/screens/privacy_policy_screen.dart';
import '../../teacher_profile/presentation/screens/help_support_screen.dart';
import 'teacher_sidebar.dart';

class TeacherLayout extends StatefulWidget {
  const TeacherLayout({super.key});

  @override
  State<TeacherLayout> createState() => _TeacherLayoutState();
}

class _TeacherLayoutState extends State<TeacherLayout> {
  int _selectedIndex = 0;
  String? _selectedStudentId; // To pass to details screen if needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // ── Left sidebar ──
          TeacherSidebar(
            selectedIndex: _selectedIndex,
            onItemSelected: (i) => setState(() => _selectedIndex = i),
          ),

          // ── Divider line ──
          const VerticalDivider(width: 1, thickness: 1, color: Color(0xFFE0E0E0)),

          // ── Main content ──
          Expanded(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return TeacherDashboardScreen(
          onProfileTap: () => setState(() => _selectedIndex = 2),
        );
      case 1:
        return StudentOverviewScreen(
          onProfileTap: () => setState(() => _selectedIndex = 2),
          onViewDetails: (id) => setState(() {
            _selectedStudentId = id;
            _selectedIndex = 5;
          }),
        );
      case 2:
        return TeacherProfileScreen(
          onProfileTap: () => setState(() => _selectedIndex = 2),
          onPrivacyPolicyTap: () => setState(() => _selectedIndex = 3),
          onHelpSupportTap: () => setState(() => _selectedIndex = 4),
        );
      case 3:
        return PrivacyPolicyScreen(
          onBack: () => setState(() => _selectedIndex = 2),
        );
      case 4:
        return HelpSupportScreen(
          onBack: () => setState(() => _selectedIndex = 2),
        );
      case 5:
        return StudentDetailsScreen(
          studentId: _selectedStudentId,
          onProfileTap: () => setState(() => _selectedIndex = 2),
          onBack: () => setState(() => _selectedIndex = 1),
        );
      default:
        return TeacherDashboardScreen(
          onProfileTap: () => setState(() => _selectedIndex = 2),
        );
    }
  }
}
