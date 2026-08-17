import 'package:flutter_sarpongoy_twelve/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/request/help_support_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher_profile/data/model/teacher_get_profile_response_model.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/flutx_core/debug_print.dart';
import '../../../../core/services/auth_storage_service.dart';
import '../../../../core/services/multiple_form_data_manager.dart';
import '../../domain/repo/profile_repo.dart';

class TeacherProfileController extends BaseController {
  final _profileRepository = Get.find<TeacherProfileRepository>();
  final AuthStorageService _authStorageService = AuthStorageService();
  final MultiFormDataManager _multiFormDataManager = MultiFormDataManager();

  final Rxn<TeacherProfileResponseModel> userInfo =
      Rxn<TeacherProfileResponseModel>();

  // @override
  // void onInit() {
  //   super.onInit();
  //   fetchProfile();
  // }

  Future<void> fetchProfile() async {
    setLoading(true);
    final result = await _profileRepository.fetchProfile();

    result.fold(
      (fail) {
        setLoading(false);
        setError(fail.message);
        DPrint.log('data fetch failed');
      },
      (success) {
        setLoading(false);
        userInfo.value = success.data;
        DPrint.log(success.message);
      },
    );
  }

  Future<void> updateProfile(
    String firstName,
    String lastName,
    String phone,
    String bio,
  ) async {
    _multiFormDataManager.addTextData("firstName", firstName);
    _multiFormDataManager.addTextData("lastName", lastName);
    _multiFormDataManager.addTextData("phone", phone);
    _multiFormDataManager.addTextData("bio", bio);

    final formRequest = await _multiFormDataManager.toFormDataAsync();

    setLoading(true);
    final result = await _profileRepository.updateProfile(formRequest);

    result.fold(
      (fail) {
        setLoading(false);
        setError(fail.message);
        DPrint.log('profile info: ${fail.message}');
      },
      (success) async {
        DPrint.log('profile info: ${success.message}');
        await fetchProfile(); // This already handles setLoading(false)
        _multiFormDataManager.clear();
        setError(success.message);
      },
    );
  }

  Future<bool> helpSupport(String subject, String description) async {
    setLoading(true);
    final request = HelpSupportRequestModel(
      subject: subject,
      description: description,
    );
    final result = await _profileRepository.helpAndSupport(request);

    return result.fold(
      (fail) {
        setLoading(false);
        setError(fail.message);
        DPrint.log('help support failed: ${fail.message}');
        Get.snackbar(
          'Error',
          fail.message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        return false;
      },
      (success) {
        setLoading(false);
        DPrint.log('help support success: ${success.message}');
        Get.snackbar(
          'Success',
          'Your concern has been submitted successfully.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        return true;
      },
    );
  }

  Future<void> logout() async {
    await _authStorageService.clearAuthData();
    Get.offAll(() => const SplashScreen());
  }
}
