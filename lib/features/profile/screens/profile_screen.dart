import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/services/auth_storage_service.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/screens/login_as_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/controller/profile_controller.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/screens/Profile_picture_change.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/screens/privacy_policy_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/screens/security_question_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/screens/support__screen.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthStorageService _authStorageService = AuthStorageService();
  final ProfileController _profileController = Get.find<ProfileController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _profileController.fetchProfile();
    });
  }

  Future<void> logout(String label) async {
    await _authStorageService.clearAuthData();
    Get.offAll(() => LoginAsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F5F2),
      body: Obx(() {
        if (_profileController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        final student = _profileController.userInfo.value?.student;

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    if (Navigator.canPop(context))
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Container(
                          margin: const EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Color(0xFF003D81),
                            size: 20,
                          ),
                        ),
                      ),
                    const Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0xFF003D81),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

              /// Profile Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: _cardDecoration(),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: student?.picture.url != null &&
                              student!.picture.url.isNotEmpty
                          ? Image.network(
                              student.picture.url,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                'assets/images/00f9997dc3c8cbb22e5eae2f0a40bcc0e9a215b6.jpg',
                                fit: BoxFit.contain,
                              ),
                            )
                          : const Icon(
                              Icons.person_outline_rounded,
                              size: 50,
                              color: Colors.black,
                            ),
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            student?.name ?? "Sariah Kennies",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF003D81),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: const Color(0xFFBA1486),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                student?.status.toLowerCase() == 'active'
                                    ? 'Active Student'
                                    : (student?.status ?? 'Active Student'),
                                style: const TextStyle(
                                  color: Color(0xFF9109A9),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(() => ProfilePictureChange());
                      },
                      icon: const Icon(
                        Icons.mode_edit_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                "Personal Information",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFF003D81),
                ),
              ),

              const SizedBox(height: 18),

              /// Personal Info Card
              Container(
                padding: const EdgeInsets.all(26),
                decoration: _cardDecoration(),
                child: Column(
                  children: [
                    _infoRow(
                      "GRADE LEVEL",
                      student?.gradeLevel ?? "JHS 1",
                      'assets/images/graduation-cap_17087186 1.png',
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(thickness: 1, color: Color(0xFFB9B9B9)),
                    ),
                    _infoRow(
                      "SCHOOL NAME",
                      student?.school.name ??
                          "International Academy of Excellence",
                      'assets/images/school_name.png',
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(thickness: 1, color: Color(0xFFB9B9B9)),
                    ),
                    _infoRow(
                      "USER ID",
                      student?.userId ?? "878248888",
                      'assets/images/user_id.png',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// Stats Row
              Row(
                children: [
                  Expanded(
                    child: _statCard(
                      student!.averageScore.toString(),
                      "Average Score",
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _statCard(
                      (student.totalNumberOfMinutes / 60).toStringAsFixed(0),
                      "Total Number of Hours",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                "Account Settings",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFF003D81),
                ),
              ),

              const SizedBox(height: 18),

              /// Settings List
              Container(
                decoration: _cardDecoration(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 42.0,
                    horizontal: 39,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const PrivacyPolicyScreen());
                        },
                        child: _settingTile(
                          'assets/images/g1553.png',
                          "Privacy Policy",
                          'Control who can see your progress',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Divider(height: 1, color: Color(0xFFB9B9B9)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const SupportScreen());
                        },
                        child: _settingTile(
                          'assets/images/translate_6574812 1.png',
                          "Help and support",
                          'Get help anytime.',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Divider(height: 1, color: Color(0xFFB9B9B9)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SecurityQuestionScreen(label: ''));
                        },
                        child: _settingTile(
                          'assets/images/Frame 2147231928.png',
                          "Create New Password",
                          'Change your previous password',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Divider(height: 1, color: Color(0xFFB9B9B9)),
                      ),
                      GestureDetector(
                        onTap: () {
                          _showLogoutDialog(context);
                        },
                        child: _settingTile(
                          'assets/images/log-out_3287298 1.png',
                          "Logout",
                          'Sign out from your session',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Divider(height: 1, color: Color(0xFFB9B9B9)),
                      ),
                      GestureDetector(
                        onTap: () {
                          _showDeleteDialog(context);
                        },
                        child: _settingTile(
                          'assets/images/delete.png',
                          "Delete Account",
                          'All of your progress will be deleted',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _infoRow(String title, String value, String image) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF1E1E1E),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
        ),

        //Spacer(),
        Container(height: 45, width: 45, child: Image.asset(image)),
      ],
    );
  }

  Widget _statCard(String value, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 37),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF1E1E1E),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _settingTile(String image, String title, String subtitle) {
    return ListTile(
      leading: Container(width: 40, height: 40, child: Image.asset(image)),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(14),
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          //spreadRadius: .1,
          color: Colors.black.withOpacity(0.3),
        ),
      ],
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Padding(
          padding: const EdgeInsets.all(30.0),
          child: const Text(
            "Are you sure to log out?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        content: const Text(
          "You will be signed out from this app.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actionsPadding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 10),
            child: Container(
              width: 150,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                style: TextButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xFFFF1433), // Border color
                    width: 1.5, // Border thickness
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // Optional rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  "Cancel",
                  style: TextStyle(fontSize: 16, color: Color(0xFFFF1433)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 10),
            child: Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.pop(context); // close dialog

                  final role = await _authStorageService.getRole();
                  logout(role!);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF1433),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "Log out",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Padding(
          padding: const EdgeInsets.all(30.0),
          child: const Text(
            "Are you sure to delete account?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        content: const Text(
          "Your all progress will be deleted",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actionsPadding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 10),
            child: Container(
              width: 150,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                style: TextButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xFFFF1433), // Border color
                    width: 1.5, // Border thickness
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // Optional rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  "Cancel",
                  style: TextStyle(fontSize: 16, color: Color(0xFFFF1433)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 10),
            child: Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () async {
                  await _profileController.deleteProfile();
                  await _authStorageService.clearAuthData();
                  Get.offAll(() => LoginAsScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF1433),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "delete",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
