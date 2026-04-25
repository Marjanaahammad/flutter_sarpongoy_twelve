import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/presentation/teacher_layout.dart';
import 'package:flutter_sarpongoy_twelve/core/services/sync_service.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import '../../../core/services/auth_storage_service.dart';
import '../../../core/services/secure_store_services.dart';
import '../../auth/screens/login_screen.dart';
import '../../onboarding/screen/onboarding_screen.dart';
import '../../sidebar/SideBarForTabAndMobile.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AuthStorageService _authStorageService = AuthStorageService();

  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  void _navigateToOnboarding() {
    Future.delayed(const Duration(seconds: 3), () async {
      final secureStore = SecureStoreServices();
      final savedUserId = await secureStore.retrieveData("userId");
      final savedPassword = await secureStore.retrieveData("password");

      final isAuth = await _authStorageService.isAuthenticated();
      final role = await _authStorageService.getRole();

      if (isAuth && role == "Student") {
        // Pull latest progress from backend before navigating
        final syncService = Get.find<SyncService>();
        await syncService.pullFromBackend();
        Get.offAll(() => SideBarForTabAndMobile());
      } else if (isAuth && role == "Teacher") {
        Get.offAll(() => TeacherLayout());
      } else if (savedUserId != null && savedPassword != null && role != null) {
        // Not logged in but has saved credentials (after logout): Go to Login directly
        Get.offAll(
          () => LoginScreen(
            label: role,
            userId: savedUserId,
            password: savedPassword,
          ),
        );
      } else {
        // First time or no saved credentials: Go to Onboarding
        Get.offAll(() => OnboardingScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/9bca85f6e3a12bfa0a6d41e8bac3ed3d65bda5e4.png',
          width: 410,
          height: 321,
        ),
      ),
    );
  }
}
