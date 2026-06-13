import 'dart:developer' as DPrint;

import 'package:flutter_sarpongoy_twelve/features/auth/controller/rememberme_controller.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/controller/security_check_controller.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/model/request/reset_password_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/model/request/security_question_match_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/model/request/security_question_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/screens/login_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/screens/reset_password_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/controller/profile_controller.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/screens/create_new_password_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/screens/profile_screen.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/presentation/teacher_layout.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../../../core/base/base_controller.dart';
import '../../../core/constants/key_constants.dart';
import '../../../core/services/auth_storage_service.dart';
import '../../../core/services/secure_store_services.dart';
import '../../../core/services/sync_service.dart';
import '../../sidebar/SideBarForTabAndMobile.dart';
import '../model/request/login_request_model.dart';
import '../repositories/auth_repo.dart';
import 'package:flutter/material.dart';
import '../screens/security_check_screen.dart';

class AuthController extends BaseController {
  final _authRepo = Get.find<AuthRepository>();

  final AuthStorageService _authStorageService = AuthStorageService();
  final securityCheckController = Get.put(SecurityCheckController());

  Future<void> login(
      RememberMeController? rememberMeController, {
        required String userId,
        required String password,
        required String label,
      }) async {
    final request = LoginRequestModel(userId: userId, password: password);

    final result = await _authRepo.login(request);

    DPrint.log("Login Response ${result.isRight()}");

    result.fold(
          (fail) {
        setError(fail.message);
        setLoading(false);

        // Show generic message if 401 (Wrong password or userId)
        final String errorMessage = fail.statusCode == 401
            ? "User ID or Password is wrong"
            : fail.message;

        Get.snackbar(
          "Login Failed",
          errorMessage,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
          margin: const EdgeInsets.all(10),
          borderRadius: 10,
        );
      },
          (success) async {
        // Extract user data
        final user = success.data.user;

        // Store access token and refresh token for ANY user
        await _authStorageService.storeAuthData(
          accessToken: success.data.accessToken,
          refreshToken: success.data.refreshToken,
          userId: user.userId,
          role: label,
        );

        final secureStore = SecureStoreServices();
        final userIdFromStorage = await _authStorageService.getUserId();

        // Check if security check was already completed for this user
        final isSecurityChecked = await secureStore.retrieveData(
          "${KeyConstants.isSecurityChecked}_$userIdFromStorage",
        );

        // If Remember Me is ON → save userId + password
        if (rememberMeController?.rememberMe.value == true) {
          secureStore.storeData('${label}_userId', userId);
          secureStore.storeData('${label}_password', password);
        } else {
          secureStore.deleteData('${label}_userId');
          secureStore.deleteData('${label}_password');
        }

        if (label == 'Student') {
          // Pull latest progress from backend after login
          final syncService = Get.find<SyncService>();
          final pulledCount = await syncService.pullFromBackend();

          // Fetch student profile immediately
          if (Get.isRegistered<ProfileController>()) {
            await Get.find<ProfileController>().fetchProfile();
          }

          // If we have progress on the server, it means security setup was already done
          if (isSecurityChecked == 'true' || pulledCount > 0) {
            // Persist security checked state if we pulled progress on a new device
            if (isSecurityChecked != 'true') {
              await secureStore.storeData(
                "${KeyConstants.isSecurityChecked}_$userIdFromStorage",
                "true",
              );
            }
            Get.offAll(() => SideBarForTabAndMobile());
          } else {
            Get.offAll(() => const SecurityCheckScreen());
          }
        } else {
          Get.offAll(() => const TeacherLayout());
        }
      },
    );
  }

  //
  Future securityAnswerStore(List<SecurityQuestion> questions) async {
    setLoading(true);

    final request = SecurityQuestionsRequestModel(securityQuestions: questions);

    final result = await _authRepo.securityQuestion(request);

    result.fold(
      (fail) {
        setError(fail.message);
        Get.snackbar(
          "Error",
          fail.message,
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white,
        );
        setLoading(false);
      },
      (success) async {
        final secureStore = SecureStoreServices();
        final userIdFromStorage = await _authStorageService.getUserId();
        if (userIdFromStorage != null) {
          await secureStore.storeData(
            "${KeyConstants.isSecurityChecked}_$userIdFromStorage",
            "true",
          );
        }
        securityCheckController.submit();
        setLoading(false);
      },
    );
  }

  Future securityQuestionMatch(
    List<SecurityAnswer> questions,
    String label,
  ) async {
    setLoading(true);
    final userId = await _authStorageService.getUserId();
    DPrint.log('UserId: $userId');
    if (userId == null || userId.isEmpty) {
      setLoading(false);
      return false; // Return false for guest
    }

    final request = SecurityQuestionMatchRequestModel(
      userId: userId,
      answers: questions,
    );

    final result = await _authRepo.securityQuestionForResetPass(request);

    result.fold(
      (fail) {
        setError(fail.message);
        Get.snackbar(
          "Error",
          fail.message,
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white,
        );
        setLoading(false);
      },
      (success) {
        if (success.data.matched == 0) {
          Get.snackbar(
            "Error",
            "Answer is not matched",
            backgroundColor: Colors.red.withOpacity(0.8),
            colorText: Colors.white,
          );
          setLoading(false);
          return;
        }
        Get.to(
          () => ResetPasswordScreen(
            label: label,
            resetToken: success.data.resetToken,
          ),
        );
        setLoading(false);
      },
    );
  }

  Future securityQuestion(List<SecurityAnswer> questions, String label) async {
    setLoading(true);
    final userId = await _authStorageService.getUserId();
    DPrint.log('UserId: $userId');
    if (userId == null || userId.isEmpty) {
      setLoading(false);
      return false; // Return false for guest
    }

    final request = SecurityQuestionMatchRequestModel(
      userId: userId,
      answers: questions,
    );

    final result = await _authRepo.securityQuestionForResetPass(request);

    result.fold(
      (fail) {
        setError(fail.message);
        Get.snackbar(
          "Error",
          fail.message,
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white,
        );
        setLoading(false);
      },
      (success) {
        if (success.data.matched == 0) {
          Get.snackbar(
            "Error",
            "Answer is not matched",
            backgroundColor: Colors.red.withOpacity(0.8),
            colorText: Colors.white,
          );
          setLoading(false);
          return;
        }
        Get.to(
          () => CreateNewPasswordScreen(
            label: label,
            resetToken: success.data.resetToken,
          ),
        );
        setLoading(false);
      },
    );
  }

  //
  // Future verifyOTP(String email, String otp) async {
  //   final request = VerifyOtpRequestModel(email: email, otp: otp);
  //   final result = await _authRepo.verifyOtp(request);
  //
  //   result.fold(
  //         (fail) {
  //       setError(fail.message);
  //       DPrint.log("verify otp success result : ${fail.message}");
  //     },
  //         (success) {
  //       DPrint.log("verify otp success result : ${success.message}");
  //       Get.to(CreateNewPasswordScreen(email: email, otp: otp));
  //     },
  //   );
  // }
  //
  Future resetPass(
    String resetToken,
    String confirmPassword,
    String newPassword,
    String label,
  ) async {
    final request = ResetPasswordRequestModel(
      newPassword: newPassword,
      resetToken: resetToken,
      confirmPassword: confirmPassword,
    );
    final result = await _authRepo.createNewPassword(request);

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log("New Password set failed result : ${fail.message}");
      },
      (success) {
        DPrint.log("New Password set successfully result : ${success.message}");
        Get.offAll(LoginScreen(label: label));
      },
    );
  }

  Future createNewPass(
    String resetToken,
    String confirmPassword,
    String newPassword,
    String label,
  ) async {
    final request = ResetPasswordRequestModel(
      newPassword: newPassword,
      resetToken: resetToken,
      confirmPassword: confirmPassword,
    );
    final result = await _authRepo.createNewPassword(request);

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log("New Password set failed result : ${fail.message}");
      },
      (success) {
        DPrint.log("New Password set successfully result : ${success.message}");
        Get.offAll(() => ProfileScreen());
      },
    );
  }

  Future<void> saveUserIdToStorage(String userId) async {
    await _authStorageService.storeUserId(userId.trim());
  }
}
