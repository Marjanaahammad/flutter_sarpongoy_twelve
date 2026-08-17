import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/profile_controller.dart';

class TeacherProfileScreen extends StatefulWidget {
  final VoidCallback? onProfileTap;
  final VoidCallback? onPrivacyPolicyTap;
  final VoidCallback? onHelpSupportTap;
  const TeacherProfileScreen({
    super.key,
    this.onProfileTap,
    this.onPrivacyPolicyTap,
    this.onHelpSupportTap,
  });

  @override
  State<TeacherProfileScreen> createState() => _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends State<TeacherProfileScreen> {
  final TeacherProfileController _controller = Get.put(
    TeacherProfileController(),
  );

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  late final Worker _profileWorker;

  @override
  void initState() {
    super.initState();
    if (_controller.userInfo.value != null) {
      _updateControllers();
    } else {
      _controller.fetchProfile();
    }
    _profileWorker = ever(_controller.userInfo, (_) => _updateControllers());
  }

  void _updateControllers() {
    final user = _controller.userInfo.value?.user;
    final teacher = _controller.userInfo.value?.teacher;
    if (user != null) {
      _firstNameController.text = user.firstName ?? teacher?.name ?? '';
      _lastNameController.text = user.lastName ?? '';
      _userIdController.text = user.userId ?? '';
      _phoneController.text = user.phone ?? '';
      _bioController.text = user.bio ?? '';
    }
  }

  @override
  void dispose() {
    _profileWorker.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userIdController.dispose();
    _phoneController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final user = _controller.userInfo.value?.user;
      final teacher = _controller.userInfo.value?.teacher;
      final displayName = user?.name ?? teacher?.name ?? 'User';

      return Scaffold(
        backgroundColor: const Color(0xFFF3F8E2),
        body: Stack(
          children: [
            Column(
              children: [
                _buildTopBar(displayName, teacher?.picture?.url),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _controller.fetchProfile(),
                    color: const Color(0xFF0FCE46),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Profile',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF003D81),
                            ),
                          ),
                          const SizedBox(height: 24),

                          // ── Teacher info card ──
                          _buildInfoCard(displayName, teacher?.picture?.url),
                          const SizedBox(height: 24),

                          // ── Personal Information Section ──
                          _buildPersonalInformationSection(),
                          const SizedBox(height: 24),

                          // ── Assign course Section ──
                          _buildAssignCourseSection(teacher?.courses ?? []),
                          const SizedBox(height: 24),

                          // ── Account Settings Section ──
                          _buildAccountSettingsSection(),
                          const SizedBox(height: 48),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (_controller.isLoading.value)
              const Center(
                child: CircularProgressIndicator(color: Color(0xFF0FCE46)),
              ),
          ],
        ),
      );
    });
  }

  Widget _buildTopBar(String name, String? imageUrl) {
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
          Row(
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 16),
              ClipOval(
                child: imageUrl != null && imageUrl.isNotEmpty
                    ? Image.network(
                        imageUrl,
                        height: 44,
                        width: 44,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            _buildFallbackIcon(44, 24),
                      )
                    : _buildFallbackIcon(44, 24),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String name, String? imageUrl) {
    return Container(
      height: 160,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE4E4E4)),
      ),
      child: Row(
        children: [
          ClipOval(
            child: imageUrl != null && imageUrl.isNotEmpty
                ? Image.network(
                    imageUrl,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        _buildFallbackIcon(120, 60),
                  )
                : _buildFallbackIcon(120, 60),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181919),
                ),
              ),
              Text(
                'Teacher',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF181919),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPersonalInformationSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE4E4E4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Personal Information',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: _buildTextField('First Name', _firstNameController),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: _buildTextField('Last Name', _lastNameController),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _buildTextField('User ID', _userIdController),
              ),
              const SizedBox(width: 30),
              Expanded(child: _buildTextField('Phone', _phoneController)),
            ],
          ),
          const SizedBox(height: 20),
          _buildTextField('Bio', _bioController, maxLines: 5),
        ],
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFF181919),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          readOnly: true,
          maxLines: maxLines,
          cursorColor: const Color(0xFF0FCE46),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFE4E4E4)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFE4E4E4)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFE4E4E4)),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF575757),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  int selectedIndex = -1; // Add this in your widget's state (StatefulWidget)

  Widget _buildAssignCourseSection(List courses) {
    final subjects = [
      {
        'name': 'English',
        'icon': 'assets/images/eglishIcon.png',
        'color': Color(0xFFE8F5E9),
      },
      {
        'name': 'Science',
        'icon': 'assets/images/scienceIcon.png',
        'color': Color(0xFFF3E5F5),
      },
      {
        'name': 'Math',
        'icon': 'assets/images/mathIcon.png',
        'color': Color(0xFFE3F2FD),
      },
      {
        'name': 'Social',
        'icon': 'assets/images/socialIcon.png',
        'color': Color(0xFFFFF3E0),
      },
      {
        'name': 'Religious',
        'icon': 'assets/images/relIcon.png',
        'color': Color(0xFFFFFDE7),
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Assign course',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF263451),
          ),
        ),
        Text(
          'Assigned Subjects for the Teacher',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF6C6C6C),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: subjects.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final subject = subjects[index];
              final isAssigned = courses.any(
                (c) => (c.name as String).toLowerCase().contains(
                      (subject['name'] as String).toLowerCase(),
                    ),
              );

              return SizedBox(
                width: 172,
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      setState(() {
                        selectedIndex = index; // ✅ update selected index
                      });
                    },
                    child: Container(
                      height: 224,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: (selectedIndex == index || isAssigned)
                            ? Border.all(
                                color: const Color(0xFF00B023),
                                width: 2,
                              )
                            : null, // ✅ border only for selected or assigned
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          subject['icon'] as String,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAccountSettingsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Account Settings',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF003D81),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 217,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              _buildSettingsTile(
                imagePath: 'assets/images/privacy.png',
                bgColor: const Color(0xFFE57373),
                title: 'Privacy Policy',
                subtitle: 'Terms of use',
                onTap: widget.onPrivacyPolicyTap,
              ),
              Divider(
                height: 1,
                indent: 64,
                color: Color(0xFF808080).withOpacity(0.55),
              ),
              const SizedBox(height: 7),
              _buildSettingsTile(
                imagePath: 'assets/images/help.png',
                bgColor: const Color(0xFF7986CB),
                title: 'Help and Support',
                subtitle: 'Get help anytime.',
                onTap: widget.onHelpSupportTap,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSettingsTile({
    required String imagePath, // ✅ replace icon with image
    required Color bgColor, // background color for the container
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Container(
        // padding: const EdgeInsets.all(8),
        // decoration: BoxDecoration(
        //   color: bgColor.withOpacity(0.1),
        //   borderRadius: BorderRadius.circular(8),
        // ),
        child: Image.asset(
          imagePath,
          height: 40,
          width: 40,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFF1E1E1E),
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: onTap ?? () {},
    );
  }

  Widget _buildFallbackIcon(double size, double iconSize) {
    return Container(
      height: size,
      width: size,
      color: const Color(0xFF0FCE46).withOpacity(0.1),
      child: Icon(
        Icons.person,
        size: iconSize,
        color: const Color(0xFF0FCE46),
      ),
    );
  }
}
