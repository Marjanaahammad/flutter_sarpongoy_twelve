import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/core/common/widgets/button_widgets.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/screens/login_screen.dart';
import 'package:get/get.dart';
import '../controller/login_as_controller.dart';
import '../widgets/role_card.dart';

class LoginAsScreen extends StatefulWidget {
  const LoginAsScreen({super.key});

  @override
  State<LoginAsScreen> createState() => _LoginAsScreenState();
}

class _LoginAsScreenState extends State<LoginAsScreen> {
  final LoginAsController controller = Get.put(LoginAsController());

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    // Calculate width & height in inches (assuming 160 logical pixels per inch)
    final widthInches = size.width / 160;
    final heightInches = size.height / 160;

    // Calculate diagonal screen size in inches
    final diagonalInches = sqrt(
      widthInches * widthInches + heightInches * heightInches,
    );

    final isSmallScreen = diagonalInches <= 6.9;

    return Scaffold(
      backgroundColor: const Color(0xFFFBFBF9),
      body: Stack(
        children: [
          // Background Vector 1 (Top Right)
          if (!isSmallScreen)
            Positioned(
              top: 120,
              right: 100,
              child: Image.asset(
                'assets/images/Vector (1).png',
                height: 280,
                width: 140,
                fit: BoxFit.contain,
              ),
            ),

          // Background Vector 2 (Bottom Left)
          if (!isSmallScreen)
            Positioned(
              bottom: 180,
              left: 60,
              child: Image.asset(
                'assets/images/Vector (2).png',
                height: 320,
                width: 180,
                fit: BoxFit.contain,
              ),
            ),

          // Main Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),

                  // Logo
                  Image.asset(
                    'assets/images/9bca85f6e3a12bfa0a6d41e8bac3ed3d65bda5e4.png',
                    width: 236,
                    height: 185,
                    fit: BoxFit.contain,
                  ),
                  //const SizedBox(height: 32),

                  // Title
                  const Text(
                    'Log in as a',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Role Selection Cards
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.selectRole("Teacher");
                          },
                          child: RoleCard(
                            color: const Color(0xFFF9BF5C),
                            image: 'assets/images/Frame (1).png',
                            iconColor: Colors.brown,
                            label: "Teacher",
                            isSelected:
                                controller.selectedRole.value == "Teacher",
                          ),
                        ),
                        const SizedBox(width: 32),
                        GestureDetector(
                          onTap: () {
                            controller.selectRole("Student");
                          },
                          child: RoleCard(
                            color: const Color(0xFF91C558),
                            image: 'assets/images/Frame.png',
                            iconColor: Colors.green.shade700,
                            label: "Student",
                            isSelected:
                                controller.selectedRole.value == "Student",
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 36),
                  // Log in Button
                  SizedBox(
                    width: 510,
                    height: 56,
                    child: PrimaryButton(
                      onSimplePressed: () {
                        if (controller.selectedRole.value != null) {
                          Get.to(
                            () => LoginScreen(
                              label: controller.selectedRole.value!,
                            ),
                          );
                        } else {
                          Get.snackbar(
                            "Selection Required",
                            "Please select a role to continue",
                            snackPosition: SnackPosition.BOTTOM,
                            snackStyle: SnackStyle.FLOATING,
                            maxWidth: 565,
                            margin: const EdgeInsets.all(16),
                            backgroundColor: Colors.red.withOpacity(0.6),
                          );
                        }
                      },
                      text: "Log in",
                      backgroundColor: const Color(0xFF0A4390),
                      textColor: Colors.white,
                    ),
                  ),

                  const Spacer(),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
