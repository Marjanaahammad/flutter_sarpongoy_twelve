import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/services/auth_storage_service.dart';
import '../../auth/screens/login_as_screen.dart';
import '../../sidebar/controller/sidebar_controller.dart';
import '../../splash/screens/splash_screen.dart';

class TeacherSidebar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  TeacherSidebar({
    super.key,
    this.selectedIndex = 0,
    required this.onItemSelected,
  });

  final AuthStorageService _authStorageService = AuthStorageService();

  Future<void> logout(String label) async {
    await _authStorageService.clearAuthData();
    Get.offAll(() => LoginAsScreen());
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

  @override
  Widget build(BuildContext context) {
    final sidebarController = Get.isRegistered<SidebarController>()
        ? Get.find<SidebarController>()
        : Get.put(SidebarController());

    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 24),
          // ── Logo ──
          GestureDetector(
            onTap: () {
              sidebarController.resetToHome();
              onItemSelected(0);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Image.asset(
                'assets/images/9bca85f6e3a12bfa0a6d41e8bac3ed3d65bda5e4.png',
                height: 102,
                width: 130,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // ── Scrollable Tiles ──
          Expanded(
            child: SingleChildScrollView(
              child: Obx(() {
                final selectedCourse = sidebarController.selectedCourse.value;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ── Dashboard ──
                    _SidebarTile(
                      icon: Icons.dashboard_outlined,
                      selectedIcon: Icons.dashboard,
                      label: 'Dashboard',
                      isSelected: selectedIndex == 0 && selectedCourse == null,
                      onTap: () {
                        sidebarController.resetToHome();
                        onItemSelected(0);
                      },
                    ),
                    const SizedBox(height: 16),

                    // ── Student Overview ──
                    _SidebarTile(
                      icon: Icons.people_outline,
                      selectedIcon: Icons.people,
                      label: 'Student Overview',
                      isSelected: selectedIndex == 1 && selectedCourse == null,
                      onTap: () {
                        sidebarController.resetToHome();
                        onItemSelected(1);
                      },
                    ),
                    const SizedBox(height: 16),

                    // ── Contents ──
                    _SidebarTile(
                      icon: Icons.menu_book_outlined,
                      selectedIcon: Icons.menu_book,
                      label: 'Contents',
                      isSelected: selectedIndex == 6 || selectedCourse != null,
                      onTap: () {
                        sidebarController.resetToHome();
                        onItemSelected(6);
                      },
                    ),

                    // ── Strands & BECE under Contents ──
                    if (selectedCourse != null) ...[
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(selectedCourse.strands.length, (index) {
                            final strand = selectedCourse.strands[index];
                            final isStrandSelected =
                                sidebarController.selectedStrandIndex.value == index;

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: InkWell(
                                onTap: () {
                                  sidebarController.changeStrand(index);
                                  onItemSelected(6);
                                },
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isStrandSelected
                                        ? const Color(0xFFE8F5E9)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8),
                                    border: isStrandSelected
                                        ? Border.all(
                                            color: const Color(0xFF079938),
                                            width: 1.2,
                                          )
                                        : Border.all(
                                            color: Colors.grey.shade300,
                                            width: 0.8,
                                          ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        isStrandSelected
                                            ? Icons.check_circle
                                            : Icons.circle_outlined,
                                        size: 16,
                                        color: isStrandSelected
                                            ? const Color(0xFF079938)
                                            : Colors.grey.shade600,
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              strand.title,
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: isStrandSelected
                                                    ? FontWeight.bold
                                                    : FontWeight.w500,
                                                color: isStrandSelected
                                                    ? const Color(0xFF079938)
                                                    : Colors.black87,
                                              ),
                                            ),
                                            if (strand.subtitle.isNotEmpty)
                                              Text(
                                                strand.subtitle,
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: isStrandSelected
                                                      ? const Color(0xFF079938)
                                                          .withOpacity(0.8)
                                                      : Colors.grey.shade600,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ],
                );
              }),
            ),
          ),

          // ── Log out ──
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: InkWell(
              onTap: () => _showLogoutDialog(context),
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.red, size: 20),
                    const SizedBox(width: 10),
                    Text(
                      'Log out',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════
//  SIDEBAR TILE
// ═══════════════════════════════════════════════════════════════
class _SidebarTile extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _SidebarTile({
    required this.icon,
    required this.selectedIcon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const greenStart = Color(0xFF00B023);
    const greenEnd = Color(0xFF077A1E); // lighter green for gradient

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
          decoration: BoxDecoration(
            gradient: isSelected
                ? const LinearGradient(
                    colors: [greenStart, greenEnd],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : null,
            color: isSelected ? null : Colors.transparent,
            border: isSelected
                ? null
                : Border.all(color: Color(0xFF079938), width: 1.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(
                isSelected ? selectedIcon : icon,
                color: isSelected ? Colors.white : Color(0xFF079938),
                size: 20,
              ),
              const SizedBox(width: 16),
              Flexible(
                child: Text(
                  label,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Color(0xFF079938),
                    fontSize: 16,
                    fontWeight: isSelected ? FontWeight.w400 : FontWeight.w400,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
