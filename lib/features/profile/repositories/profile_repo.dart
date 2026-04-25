import 'package:flutter_sarpongoy_twelve/features/profile/models/request/help_support_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/response/get_profile_response_model.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/response/help_support_response_model.dart';
import 'package:dio/dio.dart';
import '../../../core/api/network_result.dart';

abstract class ProfileRepository {
  NetworkResult<GetStudentProfileResponseModel> fetchProfile();

  //   //profile update
  NetworkResult<HelpSupportResponseModel> helpAndSupport(
    HelpSupportRequestModel request,
  );
  // //
  // //Change password
  //   NetworkResult<void> changePass(UpdatePasswordRequestModel request);
  //   // NetworkResult<OngoingOrderResponseModel> fetchOngoingOrder();
  //   // NetworkResult<OngoingOrderResponseModel> fetchCompletedOrder();
  //   NetworkResult<List<GetFavoriteItemsResponseModel>> fetchFavoriteItems(String userId);
  //   NetworkResult<void> deleteProfile(String userId);
  // NetworkResult<Category> fetchCategory(String userId);
  //

  NetworkResult<void> uploadPhoto(FormData request);
  NetworkResult<void> deleteAccount();
}
