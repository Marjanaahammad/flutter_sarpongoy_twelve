import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class RoleCard extends StatelessWidget {
  final Color color;
  final String image;
  final Color iconColor;
  final String label;
  final bool isSelected;

  const RoleCard({
    required this.color,
    required this.image,
    required this.iconColor,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    final pixelRatio = mediaQuery.devicePixelRatio;

    // Calculate width & height in inches
    final widthInches = size.width / pixelRatio / 160;
    final heightInches = size.height / pixelRatio / 160;

    // Calculate diagonal screen size in inches
    final diagonalInches = sqrt(widthInches * widthInches + heightInches * heightInches);

    final isSmallScreen = diagonalInches <= 6.9;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if(isSmallScreen)
        Container(
          width: 240,
          height: 234,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
            border: isSelected
                ? Border.all(color: Color(0xFF0A4390), width: 2)
                : null,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: Colors.white,
                    ),
                    height: 157,
                    width: 157,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Image.asset(image, width: 120, height: 110),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 70.5,
                right: 70.5,
                bottom: 16,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    label,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        if(!isSmallScreen)
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
            border: isSelected
                ? Border.all(color: Color(0xFF0A4390), width: 2)
                : null,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: Colors.white,
                    ),
                    height: 100,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Image.asset(image, width: 120, height: 110),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 20.5,
                right: 20.5,
                bottom: 10,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    label,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
