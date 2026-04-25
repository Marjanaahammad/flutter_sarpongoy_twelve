import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/screens/login_as_screen.dart';
import '../model/onboarding_model.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();

  RxInt currentIndex = 0.obs;

  final List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: "assets/images/onboarding.jpg",
      title: "Interactive Lessons",
      description:
          "Learn anytime, anywhere even without internet. Download lessons once and use them offline.",
    ),
    OnboardingModel(
      image: "assets/images/onboarding (1).jpg",
      title: "Interactive Lessons",
      description:
          "Learn anytime, anywhere even without internet. Download lessons once and use them offline.",
    ),
    OnboardingModel(
      image: "assets/images/onboarding (2).jpg",
      title: "Interactive Lessons",
      description:
          "Learn anytime, anywhere even without internet. Download lessons once and use them offline.",
    ),
    OnboardingModel(
      image: "assets/images/onboarding (5).jpg",
      title: "Interactive Lessons",
      description:
          "Learn anytime, anywhere even without internet. Download lessons once and use them offline.",
    ),
    OnboardingModel(
      image: "assets/images/onboarding (4).jpg",
      title: "Interactive Lessons",
      description:
          "Learn anytime, anywhere even without internet. Download lessons once and use them offline.",
    ),
  ];

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void nextPage() {
    if (currentIndex.value == onboardingList.length - 1) {
      // Navigate to Home
      Get.to(() => LoginAsScreen());
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
