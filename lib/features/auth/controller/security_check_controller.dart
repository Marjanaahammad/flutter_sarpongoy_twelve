import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../sidebar/SideBarForTabAndMobile.dart';

class SecurityCheckController extends GetxController {
  final RxBool isVerified = false.obs;

  void submit() async {
    showSuccessDialog();

    // Simulate analyzing for 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    // Update to verified state
    isVerified.value = true;

    // // Wait for 2 seconds to show the success message
    // await Future.delayed(const Duration(seconds: 2));

    // Navigate to Home Screen
    Get.offAll(() => SideBarForTabAndMobile());
  }

  void showSuccessDialog() {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: 450,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
          decoration: BoxDecoration(
            color: const Color(0xFFF9F9F7),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Obx(
            () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!isVerified.value)
                  const _AnalyzingView()
                else
                  const _VerifiedView(),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: true,
    );
  }
}

class _AnalyzingView extends StatelessWidget {
  const _AnalyzingView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom loading animation (4 green dots as per image)
        const _CustomLoadingIndicator(),
        const SizedBox(height: 32),
        const Text(
          'Security Check',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Analyzing Your Response',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _VerifiedView extends StatelessWidget {
  const _VerifiedView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.check_circle, color: Color(0xFF4CAF50), size: 80),
        const SizedBox(height: 32),
        const Text(
          'Security Check',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Your identity has been\nverified successfully.',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _CustomLoadingIndicator extends StatefulWidget {
  const _CustomLoadingIndicator();

  @override
  State<_CustomLoadingIndicator> createState() =>
      _CustomLoadingIndicatorState();
}

class _CustomLoadingIndicatorState extends State<_CustomLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: SizedBox(
        width: 40,
        height: 40,
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(
            6,
            (index) => Container(
              decoration: const BoxDecoration(
                color: Color(0xFF4CAF50),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
