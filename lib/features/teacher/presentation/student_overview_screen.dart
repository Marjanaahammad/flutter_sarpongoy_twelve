import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/flutx_core/debug_print.dart';
import 'package:get/get.dart';
import 'controller/teacher_dashboard_controller.dart';
import '../../teacher_profile/presentation/controller/profile_controller.dart';

class StudentOverviewScreen extends StatelessWidget {
  final VoidCallback? onProfileTap;
  final Function(String)? onViewDetails;

  final TeacherProfileController _profileController =
      Get.find<TeacherProfileController>();
  final TeacherDashboardController _dashboardController =
      Get.find<TeacherDashboardController>();

  StudentOverviewScreen({super.key, this.onViewDetails, this.onProfileTap}) {
    _dashboardController.fetchStudent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F5E1),
      body: Obx(() {
        if (_dashboardController.isLoading.value &&
            _dashboardController.studentInfo.value == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return Column(
          children: [
            _buildTopBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStatCards(),
                    const SizedBox(height: 24),
                    _buildMainContainer(),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
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
          Obx(() {
            final user = _profileController.userInfo.value?.user;
            final teacher = _profileController.userInfo.value?.teacher;
            return InkWell(
              onTap: onProfileTap,
              child: Row(
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
                            errorBuilder: (c, e, s) => Image.asset(
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
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildStatCards() {
    final meta = _dashboardController.studentInfo.value?.meta;
    return Row(
      children: [
        _buildStatCard(
          'Total Students',
          meta?.total.toString() ?? '0',
          '', // No change data in model
          const Color(0xFF00B023),
        ),
        const SizedBox(width: 16),
        _buildStatCard(
          'Active Students',
          _dashboardController.activeStudentCount.toString(),
          '',
          const Color(0xFF00B023),
        ),
        const SizedBox(width: 16),
        _buildStatCard(
          'Inactive Students',
          _dashboardController.inactiveStudentCount.toString(),
          '',
          const Color(0xFF00B023),
        ),
      ],
    );
  }

  Widget _buildStatCard(
    String title,
    String value,
    String change,
    Color color,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFCECECE)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF349801),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF047A00),
                  ),
                ),
                Text(
                  change,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFFCE7800),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainContainer() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFCECECE)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 24),
          _buildTable(),
          const SizedBox(height: 24),
          _buildPagination(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Student Overview',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF181919),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Color(0xFF6C6C6C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 16,
                  color: Color(0xFF727272),
                ),
                const Text(
                  'Student Overview',
                  style: TextStyle(
                    color: Color(0xFF6C6C6C),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 357,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF727272)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: _dashboardController.searchController,
                      cursorColor: Colors.black,
                      onChanged: (value) {
                        _dashboardController.searchQuery.value = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color(0xFF6C6C6C),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 44,
                    decoration: const BoxDecoration(
                      color: Color(0xFF008302),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            InkWell(
              onTap: () => _showFilterDialog(Get.context!),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF008E32)),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.tune,
                  color: Color(0xFF00B023),
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showFilterDialog(BuildContext context) {
    final nameController = TextEditingController(
      text: _dashboardController.filterStudentName.value,
    );
    final schoolController = TextEditingController(
      text: _dashboardController.filterSchoolName.value,
    );
    final RxString localGrade = _dashboardController.filterGrade.value.obs;
    final RxString localSubject = _dashboardController.filterSubject.value.obs;

    final List<String> grades = ['All', 'JHS 1', 'JHS 2', 'JHS 3'];
    final List<String> subjects = [
      'All',
      'Math',
      'Science',
      'English',
      'Social Studies',
      'Religious & Moral Education',
    ];

    Get.dialog(
      Dialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: 450,
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Filters',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Image.asset(
                      'assets/images/cross_icon.png',
                      height: 24,
                      width: 24,
                      errorBuilder: (context, error, stackTrace) => Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Icon(Icons.close,
                            size: 16, color: Colors.grey.shade600),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Student\'s Name',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: nameController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Butlar Mane',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFF22C55E)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(color: Color(0xFF008302), width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'School Name',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: schoolController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Achimota Junior High School',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFF22C55E)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(color: Color(0xFF008302), width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Grade Level',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Obx(
                () => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF22C55E)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: localGrade.value,
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      icon: const Icon(Icons.keyboard_arrow_down,
                          color: Colors.black),
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      items: grades
                          .map(
                            (g) => DropdownMenuItem(value: g, child: Text(g)),
                          )
                          .toList(),
                      onChanged: (v) => localGrade.value = v!,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Subject',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Obx(
                () => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF22C55E)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: localSubject.value,
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      icon: const Icon(Icons.keyboard_arrow_down,
                          color: Colors.black),
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      items: subjects
                          .map(
                            (s) => DropdownMenuItem(value: s, child: Text(s)),
                          )
                          .toList(),
                      onChanged: (v) => localSubject.value = v!,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF008302),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    _dashboardController.filterStudentName.value =
                        nameController.text;
                    _dashboardController.filterSchoolName.value =
                        schoolController.text;
                    _dashboardController.filterGrade.value = localGrade.value;
                    _dashboardController.filterSubject.value =
                        localSubject.value;
                    Get.back();
                  },
                  child: const Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTable() {
    final items = _dashboardController.filteredStudents;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E4E4)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          const Divider(height: 1, color: Color(0xFFF0F0F0)),
          if (items.isEmpty)
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text('No students found'),
            )
          else
            ...items.map(
              (item) => Column(
                children: [
                  _buildTableRow(
                    item.schoolName,
                    item.studentName,
                    item.id,
                    item.gradeLevel,
                    item.status.toLowerCase() == 'active',
                  ),
                  const Divider(height: 1, color: Color(0xFFF0F0F0)),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'School Name',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              'Student\'s Name',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'User ID',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Grade Level',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Status',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Action',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableRow(
    String school,
    String name,
    String userId,
    String grade,
    bool isActive,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              school,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 29,
                  backgroundImage: AssetImage('assets/images/avatarIcon.png'),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF3B3B3B),
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              userId,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF3B3B3B),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              grade,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF3B3B3B),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                border: Border.all(
                  color: isActive ? Color(0xFF10C036) : Color(0xFFE48C00),
                ),
              ),
              child: Text(
                isActive ? 'Active' : 'Inactive',
                style: TextStyle(
                  color: isActive ? Colors.green : Colors.orange,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: const Icon(
                Icons.visibility_outlined,
                size: 20,
                color: Color(0xFF32475C),
              ),
              onPressed: () {
                if (onViewDetails != null) {
                  DPrint.log("viewing student details for $userId");
                  onViewDetails!(userId);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPagination() {
    final meta = _dashboardController.studentInfo.value?.meta;
    if (meta == null) return const SizedBox.shrink();

    final start = ((meta.page - 1) * meta.limit) + 1;
    final end = (start + meta.limit - 1).clamp(0, meta.total);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Showing $start to $end of ${meta.total} results',
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        Row(
          children: [
            _buildPageButton('<', isEnabled: meta.page > 1),
            const SizedBox(width: 4),
            _buildPageButton('1', isSelected: meta.page == 1),
            if (meta.totalPages > 1) ...[
              const SizedBox(width: 4),
              const Text('...', style: TextStyle(color: Colors.grey)),
              const SizedBox(width: 4),
              _buildPageButton(
                meta.totalPages.toString(),
                isSelected: meta.page == meta.totalPages,
              ),
            ],
            const SizedBox(width: 4),
            _buildPageButton('>', isEnabled: meta.page < meta.totalPages),
          ],
        ),
      ],
    );
  }

  Widget _buildPageButton(
    String text, {
    bool isSelected = false,
    bool isEnabled = true,
  }) {
    return Container(
      width: 32,
      height: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF008302) : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected
              ? Colors.white
              : (isEnabled ? Colors.black : Colors.grey),
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }
}
