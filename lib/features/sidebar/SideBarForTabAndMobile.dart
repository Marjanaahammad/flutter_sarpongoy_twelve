import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/home/screens/home_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/screens/profile_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/screens/progress_screen.dart';
import 'package:get/get.dart';
import '../home/screens/strand_screen.dart';
import 'controller/sidebar_controller.dart';
import 'custom_sidebar.dart';

class SideBarForTabAndMobile extends StatelessWidget {
  SideBarForTabAndMobile({super.key});

  final SidebarController controller = Get.put(SidebarController());

  final List<Widget> pages = [HomeScreen(), ProgressScreen(), ProfileScreen()];

  bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600;
  }

  @override
  Widget build(BuildContext context) {
    final tablet = isTablet(context);

    return Scaffold(
      drawer: tablet ? null : _buildDrawer(),
      body: Row(
        children: [
          if (tablet) CustomSidebar(),
          Expanded(
            child: Obx(() {
              if (controller.selectedIndex.value == -1) {
                return const StrandScreen();
              }
              return IndexedStack(
                index: controller.selectedIndex.value,
                children: pages,
              );
            }),
          ),
        ],
      ),
    );
  }

  // ================= MOBILE DRAWER =================
  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Text("iLearnReady")),
          ListTile(
            title: const Text("Home"),
            onTap: () {
              controller.changeIndex(0);
              Get.back();
            },
          ),
          ListTile(
            title: const Text("Progress"),
            onTap: () {
              controller.changeIndex(1);
              Get.back();
            },
          ),
          ListTile(
            title: const Text("Profile"),
            onTap: () {
              controller.changeIndex(2);
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
