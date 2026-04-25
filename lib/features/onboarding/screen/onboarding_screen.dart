import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// PageView Background Images
          PageView.builder(
            controller: controller.pageController,
            itemCount: controller.onboardingList.length,
            onPageChanged: controller.onPageChanged,
            itemBuilder: (context, index) {
              final pageItem = controller.onboardingList[index];
              return SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  pageItem.image,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),

          /// Bottom Content Container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(60),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    /// Title
                    Obx(() {
                      final current =
                      controller.onboardingList[controller.currentIndex.value];
                      return Text(
                        current.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF120097),
                        ),
                      );
                    }),

                    const SizedBox(height: 16),

                    /// Description
                    Obx(() {
                      final current =
                      controller.onboardingList[controller.currentIndex.value];
                      return Text(
                        current.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF636363),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),

                    const SizedBox(height: 24),

                    /// Indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.onboardingList.length,
                            (dotIndex) => Obx(
                              () => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: controller.currentIndex.value == dotIndex
                                ? 30
                                : 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: controller.currentIndex.value == dotIndex
                                  ? const Color(0xFF0A4390)
                                  : const Color(0xFF868686),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    /// Button
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF004FB0),
                              Color(0xFF1A077A)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          onPressed: controller.nextPage,
                          child: Obx(() => Text(
                            controller.currentIndex.value ==
                                controller.onboardingList.length - 1
                                ? "Next"
                                : "Next",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
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
