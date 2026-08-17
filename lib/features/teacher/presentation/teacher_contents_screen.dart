import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/screens/strand_screen.dart';
import '../../home/widgets/subject_grid_screen.dart';
import '../../sidebar/controller/sidebar_controller.dart';

class TeacherContentsScreen extends StatefulWidget {
  final VoidCallback? onProfileTap;

  const TeacherContentsScreen({super.key, this.onProfileTap});

  @override
  State<TeacherContentsScreen> createState() => _TeacherContentsScreenState();
}

class _TeacherContentsScreenState extends State<TeacherContentsScreen> {
  late final SidebarController _sidebarController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _sidebarController = Get.isRegistered<SidebarController>()
        ? Get.find<SidebarController>()
        : Get.put(SidebarController());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F5E1),
      body: SafeArea(
        child: Obx(() {
          final selectedCourse = _sidebarController.selectedCourse.value;
          if (selectedCourse != null) {
            return const StrandScreen(isTeacher: true);
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTopBar(),
                const SizedBox(height: 24),
                const Text(
                  'Subjects',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color(0xFFA53A00),
                  ),
                ),
                const SizedBox(height: 24),
                const SubjectGridScreen(),
                const SizedBox(height: 24),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _searchController,
              cursorColor: const Color(0xFF6B6B6B),
              style: const TextStyle(fontSize: 16),
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Color(0xFF6B6B6B),
                ),
                hintText: "Search here...",
                hintStyle: TextStyle(
                  color: Color(0xFF6B6B6B),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
