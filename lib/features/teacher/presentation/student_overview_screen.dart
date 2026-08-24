import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/flutx_core/debug_print.dart';
import 'package:get/get.dart';
import 'package:flutter_sarpongoy_twelve/core/no_screenshot-development/lib/no_screenshot.dart';
import 'controller/teacher_dashboard_controller.dart';
import '../../teacher_profile/presentation/controller/profile_controller.dart';

class StudentOverviewScreen extends StatefulWidget {
  final VoidCallback? onProfileTap;
  final Function(String)? onViewDetails;

  final TeacherDashboardController _dashboardController =
      Get.find<TeacherDashboardController>();

  StudentOverviewScreen({super.key, this.onViewDetails, this.onProfileTap}) {
    _dashboardController.fetchStudent(page: 1, limit: 10);
  }

  @override
  State<StudentOverviewScreen> createState() => _StudentOverviewScreenState();
}

class _StudentOverviewScreenState extends State<StudentOverviewScreen> {
  final TeacherProfileController _profileController =
      Get.find<TeacherProfileController>();

  final TeacherDashboardController _dashboardController =
      Get.find<TeacherDashboardController>();

  final _noScreenshot = NoScreenshot.instance;

  @override
  void initState() {
    super.initState();
    _noScreenshot.screenshotOff();
  }

  @override
  void dispose() {
    _noScreenshot.screenshotOn();
    super.dispose();
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
              onTap: widget.onProfileTap,
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
                    child: (teacher?.picture?.url ?? '').isNotEmpty
                        ? Image.network(
                            teacher!.picture!.url!,
                            height: 44,
                            width: 44,
                            fit: BoxFit.cover,
                            errorBuilder: (c, e, s) => _buildFallbackAvatar(),
                          )
                        : _buildFallbackAvatar(),
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
    return Row(
      children: [
        _buildStatCard(
          'Total Students',
          _dashboardController.studentInfo.value?.meta.total.toString() ??
              (_dashboardController.userInfo.value?.counters.totalStudents
                      .toString() ??
                  '0'),
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 620;
        final title = _buildHeaderTitle();
        final actions = _buildHeaderActions(isNarrow: isNarrow);

        if (isNarrow) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title,
              const SizedBox(height: 16),
              SizedBox(width: double.infinity, child: actions),
            ],
          );
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: title),
            const SizedBox(width: 24),
            actions,
          ],
        );
      },
    );
  }

  Widget _buildHeaderTitle() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Student Overview',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xFF181919),
          ),
        ),
        SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                color: Color(0xFF6C6C6C),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 16,
              color: Color(0xFF727272),
            ),
            Text(
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
    );
  }

  Widget _buildHeaderActions({required bool isNarrow}) {
    return Row(
      children: [
        if (isNarrow)
          Expanded(child: _buildSearchField())
        else
          SizedBox(width: 240, child: _buildSearchField()),
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
        const SizedBox(width: 12),
        _buildSortButton(),
      ],
    );
  }

  Widget _buildSearchField() {
    return Container(
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
              decoration: const InputDecoration(
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
    );
  }

  Widget _buildSortButton() {
    return PopupMenuButton<String>(
      tooltip: 'Sort Students',
      offset: const Offset(0, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      onSelected: (value) {
        if (value == 'studentName') {
          if (_dashboardController.sortBy.value == 'studentName') {
            if (_dashboardController.sortOrder.value == 'ASC') {
              _dashboardController.sortOrder.value = 'DESC';
            } else {
              _dashboardController.sortBy.value = 'none';
            }
          } else {
            _dashboardController.sortBy.value = 'studentName';
            _dashboardController.sortOrder.value = 'ASC';
          }
        }
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem<String>(
            value: 'studentName',
            child: Obx(() {
              final isActive =
                  _dashboardController.sortBy.value == 'studentName';
              final isAsc = _dashboardController.sortOrder.value == 'ASC';
              return Row(
                children: [
                  const Text(
                    'Student Name',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_upward,
                    size: 16,
                    color: isActive && isAsc
                        ? const Color(0xFF00B023)
                        : Colors.grey.withOpacity(0.5),
                  ),
                  const SizedBox(width: 2),
                  Icon(
                    Icons.arrow_downward,
                    size: 16,
                    color: isActive && !isAsc
                        ? const Color(0xFF00B023)
                        : Colors.grey.withOpacity(0.5),
                  ),
                ],
              );
            }),
          ),
        ];
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF008E32)),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Obx(() => Icon(
              Icons.sort,
              color: _dashboardController.sortBy.value != 'none'
                  ? const Color(0xFF00B023)
                  : const Color(0xFF727272),
              size: 20,
            )),
      ),
    );
  }

  void _showFilterDialog(BuildContext context) {
    final nameController = TextEditingController(
      text: _dashboardController.filterStudentName.value,
    );
    final schoolController = TextEditingController(
      text: _dashboardController.filterSchoolName.value,
    );
    final minScoreController = TextEditingController(
      text: _dashboardController.filterMinQuizScore.value?.toString() ?? '',
    );
    final maxScoreController = TextEditingController(
      text: _dashboardController.filterMaxQuizScore.value?.toString() ?? '',
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
        child: SingleChildScrollView(
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
                          child: Icon(
                            Icons.close,
                            size: 16,
                            color: Colors.grey.shade600,
                          ),
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
                      borderSide: const BorderSide(
                        color: Color(0xFF008302),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 16),
                // const Text(
                //   'School Name',
                //   style: TextStyle(fontWeight: FontWeight.w600),
                // ),
                // const SizedBox(height: 8),
                // TextField(
                //   controller: schoolController,
                //   cursorColor: Colors.black,
                //   decoration: InputDecoration(
                //     hintText: 'Achimota Junior High School',
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(8),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(8),
                //       borderSide: const BorderSide(color: Color(0xFF22C55E)),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(8),
                //       borderSide: const BorderSide(
                //         color: Color(0xFF008302),
                //         width: 2,
                //       ),
                //     ),
                //   ),
                // ),
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
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 14),
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
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 14),
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
                const SizedBox(height: 16),
                const Text(
                  'Average Quiz Score',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: minScoreController,
                        cursorColor: Colors.black,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        decoration: InputDecoration(
                          hintText: 'Min',
                          hintStyle: const TextStyle(
                            color: Color(0xFF6C6C6C),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xFF22C55E)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFF008302),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '–',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF6C6C6C),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: maxScoreController,
                        cursorColor: Colors.black,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        decoration: InputDecoration(
                          hintText: 'Max',
                          hintStyle: const TextStyle(
                            color: Color(0xFF6C6C6C),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xFF22C55E)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFF008302),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                      _dashboardController.filterMinQuizScore.value =
                          double.tryParse(minScoreController.text);
                      _dashboardController.filterMaxQuizScore.value =
                          double.tryParse(maxScoreController.text);
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
      ),
    );
  }

  Widget _buildTable() {
    final items = _dashboardController.filteredStudents;
    final isLoading = _dashboardController.isStudentListLoading.value;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE4E4E4)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          const Divider(height: 1, color: Color(0xFFF0F0F0)),
          if (isLoading)
            const SizedBox(
              height: 160,
              child: Center(
                child: CircularProgressIndicator(
                  color: Color(0xFF019E2E),
                ),
              ),
            )
          else if (items.isEmpty)
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text('No students found'),
            )
          else
            ...items.map(
              (item) => Column(
                children: [
                  _buildTableRow(
                    item.id,
                    item.studentName,
                    item.userId,
                    item.gradeLevel,
                    item.status.toLowerCase() == 'active',
                    item.avgQuizScore,
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
      child: const Row(
        children: [
          Expanded(
            flex: 30,
            child: Text(
              'Student\'s Name',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 30,
            child: Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'User ID',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF181919),
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Text(
              'Grade',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 18,
            child: Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Status',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF181919),
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 20,
            child: Text(
              'Average Quiz Scores',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF181919),
                fontSize: 12,
              ),
              softWrap: true,
            ),
          ),
          Expanded(
            flex: 10,
            child: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  Widget _buildTableRow(
    String studentId,
    String name,
    String userId,
    String grade,
    bool isActive,
    double avgQuizScore,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          Expanded(
            flex: 30,
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 29,
                  backgroundColor: Color(0xFFCECECE),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF3B3B3B),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 8.0),
              child: Text(
                userId,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF3B3B3B),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Text(
              grade,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF3B3B3B),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 18,
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                border: Border.all(
                  color: isActive
                      ? const Color(0xFF10C036)
                      : const Color(0xFFE48C00),
                ),
                color: isActive
                    ? const Color(0xFFE8F5E9)
                    : const Color(0xFFFFF3E0),
              ),
              child: Text(
                isActive ? 'Active' : 'Inactive',
                style: TextStyle(
                  color: isActive ? Colors.green : Colors.orange,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 20,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                avgQuizScore % 1 == 0
                    ? avgQuizScore.toInt().toString()
                    : avgQuizScore.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF3B3B3B),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: InkWell(
              onTap: () {
                if (widget.onViewDetails != null) {
                  DPrint.log("viewing student details for $studentId");
                  widget.onViewDetails!(studentId);
                }
              },
              child: const Text(
                'View',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF0066FF),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFF0066FF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPagination() {
    final meta = _dashboardController.studentInfo.value?.meta;
    if (meta == null) return const SizedBox.shrink();

    final start = meta.total == 0 ? 0 : ((meta.page - 1) * meta.limit) + 1;
    final end = (start + meta.limit - 1).clamp(0, meta.total);

    // Dynamic page range logic that mimics the original look initially
    final List<dynamic> pages = [];
    if (meta.totalPages <= 1) {
      pages.add(1);
    } else {
      pages.add(1);
      if (meta.page == 1 || meta.page == meta.totalPages) {
        if (meta.totalPages > 2) {
          pages.add('...');
        }
        pages.add(meta.totalPages);
      } else {
        if (meta.page > 2) {
          pages.add('...');
        }
        pages.add(meta.page);
        if (meta.page < meta.totalPages - 1) {
          pages.add('...');
        }
        pages.add(meta.totalPages);
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Showing $start to $end of ${meta.total} results',
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        Row(
          children: [
            _buildPageButton(
              '<',
              isEnabled: meta.page > 1,
              onTap: () {
                _dashboardController.changePage(meta.page - 1);
              },
            ),
            const SizedBox(width: 4),
            ...pages.map((p) {
              if (p == '...') {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Text('...', style: TextStyle(color: Colors.grey)),
                );
              }
              final int pageNum = p as int;
              return Padding(
                padding: const EdgeInsets.only(right: 4),
                child: _buildPageButton(
                  pageNum.toString(),
                  isSelected: meta.page == pageNum,
                  onTap: () {
                    _dashboardController.changePage(pageNum);
                  },
                ),
              );
            }),
            _buildPageButton(
              '>',
              isEnabled: meta.page < meta.totalPages,
              onTap: () {
                _dashboardController.changePage(meta.page + 1);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPageButton(
    String text, {
    bool isSelected = false,
    bool isEnabled = true,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: isEnabled ? onTap : null,
      borderRadius: BorderRadius.circular(4),
      child: Container(
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
      ),
    );
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
}
