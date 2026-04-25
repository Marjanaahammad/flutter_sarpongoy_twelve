import 'dart:developer' as DPrint;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/request/update_profile_request_model.dart';
import 'package:get/get.dart';
import '../../../core/services/multiple_form_data_manager.dart';

import 'package:flutter_sarpongoy_twelve/features/profile/models/request/help_support_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/response/get_profile_response_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import '../../../core/base/base_controller.dart';
import '../../../core/services/profile_storage_service.dart';
import '../../auth/controller/auth_controller.dart';
import '../repositories/profile_repo.dart';
import '../../../core/database/database_service.dart';
import '../../../core/services/hive_storage_service.dart';

class ProfileController extends BaseController {
  final _profileRepository = Get.find<ProfileRepository>();
  final _profileStorageService = Get.find<ProfileStorageService>();
  final MultiFormDataManager _multiFormDataManager = MultiFormDataManager();

  final Rxn<GetStudentProfileResponseModel> userInfo =
      Rxn<GetStudentProfileResponseModel>();

  @override
  void onInit() {
    super.onInit();
    _loadLocalProfile();
    // fetchProfile(); //Fetch when controller is created
  }

  Future<void> _loadLocalProfile() async {
    final localProfile = await _profileStorageService.getProfile();
    if (localProfile != null) {
      userInfo.value = localProfile;
      DPrint.log('Loaded profile from local storage');
    }
  }

  Future<void> fetchProfile() async {
    setLoading(true);
    final result = await _profileRepository.fetchProfile();

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('data fetch failed');
        setLoading(false);
      },
      (success) {
        userInfo.value = success.data;
        _profileStorageService.saveProfile(success.data);
        DPrint.log(success.message);
        setLoading(false);
      },
    );
  }

  // Future<void> deleteProfile() async {
  //   final userId = await _authStorageService.getUserId();
  //   DPrint.log('UserId: $userId');
  //   if (userId == null || userId.isEmpty) {
  //     isGuest.value = true;
  //     setLoading(false);
  //     return;
  //   } else {
  //     isGuest.value = false;
  //   }
  //
  //   final result = await _profileRepository.deleteProfile(userId);
  //
  //   result.fold(
  //         (fail) {
  //       setError(fail.message);
  //       DPrint.log('data fetch failed');
  //     },
  //         (success) {
  //       DPrint.log(success.message);
  //       Get.find<AuthController>().logout();
  //     },
  //   );
  // }

  // Future<void> updatePersonalInfo(
  //     String fullName,
  //     String phoneNumber,
  //     File? image,
  //     ) async {
  //   final userId = await _authStorageService.getUserId();
  //   DPrint.log('UserId: $userId');
  //
  //   if (userId == null || userId.isEmpty) {
  //     setError('User ID not found. Please log in again.');
  //     Get.snackbar('Error', 'User ID not found. Please log in again.');
  //     setLoading(false);
  //     return;
  //   }
  //
  //   _multiFormDataManager.clearFiles("avatar");
  //
  //   _multiFormDataManager.addTextData("fullName", fullName);
  //   _multiFormDataManager.addTextData("phone", phoneNumber);
  //   if (image != null) {
  //     _multiFormDataManager.addImageFile(image, key: "avatar");
  //   }
  //
  //   final formRequest = await _multiFormDataManager.toFormDataAsync();
  //
  //   final result = await _profileRepository.updatePersonalInfo(
  //     formRequest,
  //     userId,
  //   );
  //
  //   result.fold(
  //         (fail) {
  //       setError(fail.message);
  //       DPrint.log('Personal info: ${fail.message}');
  //     },
  //         (success) async {
  //       DPrint.log('Personal info: ${success.message}');
  //       await fetchProfile();
  //       Get.back();
  //       _multiFormDataManager.clear();
  //       setError(success.message);
  //     },
  //   );
  // }
  //
  // //
  // //
  Future<void> helpSupport(String subject, String description) async {
    setLoading(true);
    final request = HelpSupportRequestModel(
      subject: subject,
      description: description,
    );
    final result = await _profileRepository.helpAndSupport(request);

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log("help success result : ${fail.message}");
        setLoading(false);
      },
      (success) {
        DPrint.log("help success result : ${success.message}");
        Get.back();
        Get.snackbar(
          "Success",
          "Your concern has been submitted successfully.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        setLoading(false);
      },
    );
  }

  // Future<void> updatePhoto(String imageUrl) async {
  //   setLoading(true);
  //   final request = UpdateProfileRequestModel(url: imageUrl);
  //   final result = await _profileRepository.updatePhoto(request);

  //   result.fold(
  //     (fail) {
  //       setError(fail.message);
  //       DPrint.log("Update profile success result : ${fail.message}");
  //       setLoading(false);
  //     },
  //     (success) {
  //       DPrint.log("Update profile success result : ${success.message}");
  //       Get.back();
  //       fetchProfile();
  //       Get.snackbar(
  //         "Success",
  //         "Your concern has been submitted successfully.",
  //         snackPosition: SnackPosition.BOTTOM,
  //         backgroundColor: Colors.green,
  //         colorText: Colors.white,
  //       );
  //       setLoading(false);
  //     },
  //   );
  // }
  //
  // Future<void> fetchCtegory() async {
  //   final userId = await _authStorageService.getUserId();
  //   DPrint.log('UserId: $userId');
  //   if (userId == null || userId.isEmpty) {
  //     setError('User ID not found. Please log in again.');
  //     Get.snackbar('Error', 'User ID not found. Please log in again.');
  //     setLoading(false);
  //     return;
  //   }
  //
  //   final result = await _profileRepository.fetchProfile(userId);
  //
  //   result.fold(
  //         (fail) {
  //       setError(fail.message);
  //       DPrint.log('data fetch failed');
  //     },
  //         (success) {
  //       userInfo.value = success.data;
  //       DPrint.log(success.message);
  //     },
  //   );
  // }

  // Future<void> fetchOngoingOrders() async {
  //
  //   final result = await _profileRepository.fetchOngoingOrder();
  //
  //   result.fold(
  //         (fail) {
  //       setError(fail.message);
  //       DPrint.log('data fetch failed');
  //     },
  //         (success) {
  //       ongoingOrder.value = success.data;
  //       DPrint.log(success.message);
  //     },
  //   );
  // }

  // Future<void> fetchCompletedOrders() async {
  //
  //   final result = await _profileRepository.fetchCompletedOrder();
  //
  //   result.fold(
  //         (fail) {
  //       setError(fail.message);
  //       DPrint.log('data fetch failed');
  //     },
  //         (success) {
  //       completedOrder.value = success.data;
  //       DPrint.log(success.message);
  //     },
  //   );
  // }

  // Future<void> fetchFavoriteItem() async {
  //   final userId = await _authStorageService.getUserId();
  //   DPrint.log('UserId: $userId');
  //   if (userId == null || userId.isEmpty) {
  //     setError('User ID not found. Please log in again.');
  //     Get.snackbar('Error', 'User ID not found. Please log in again.');
  //     setLoading(false);
  //     return;
  //   }
  //
  //   final result = await _profileRepository.fetchFavoriteItems(userId);
  //
  //   result.fold(
  //         (fail) {
  //       setError(fail.message);
  //       DPrint.log('data fetch failed');
  //     },
  //         (success) {
  //       favoriteItems.value = success.data;
  //       favoriteItems.refresh();
  //       DPrint.log(success.message);
  //     },
  //   );
  // }

  Future<void> uploadPhoto(File image) async {
    setLoading(true);
    setError('');

    _multiFormDataManager.clear();
    _multiFormDataManager.addImageFile(image, key: "picture");

    final formRequest = await _multiFormDataManager.toFormDataAsync();

    final result = await _profileRepository.uploadPhoto(formRequest);

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('Upload photo: ${fail.message}');
        setLoading(false);
      },
      (success) {
        DPrint.log('Upload photo: Success');
        fetchProfile();
        Get.back();
        Get.snackbar(
          "Success",
          "Profile picture updated successfully.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        _multiFormDataManager.clear();
        setLoading(false);
      },
    );
  }

  Future<void> deleteProfile() async {
    setLoading(true);
    // Clear local progress and profile data
    await DatabaseService.instance.clearAllData();
    await HiveStorageService().clear();

    final result = await _profileRepository.deleteAccount();

    result.fold(
      (fail) {
        setError(fail.message);
        DPrint.log('Account delete failed');
        setLoading(false);
      },
      (success) {
        DPrint.log(success.message);
        setLoading(false);
      },
    );
  }
}
