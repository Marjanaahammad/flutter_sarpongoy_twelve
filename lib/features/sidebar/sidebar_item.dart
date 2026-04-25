import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/sidebar_controller.dart';

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;

  SidebarItem({
    super.key,
    required this.icon,
    required this.title,
    required this.index,
  });

  final SidebarController controller = Get.find<SidebarController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isSelected = controller.selectedIndex.value == index;

      return InkWell(
        onTap: () => controller.changeIndex(index),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected
                ? Colors.green.withOpacity(0.1)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: isSelected ? Colors.green : Colors.grey,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.green : Colors.grey,
                  fontWeight:
                  isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}