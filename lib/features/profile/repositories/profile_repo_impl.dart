import 'package:flutter_sarpongoy_twelve/features/profile/repositories/profile_repo.dart';
import 'package:dio/dio.dart';
import '../../../core/api/api_client.dart';
import '../../../core/api/network_result.dart';
import '../../../core/constants/api_constants.dart';
import '../models/request/help_support_request_model.dart';
import '../models/request/update_profile_request_model.dart';
import '../models/response/get_profile_response_model.dart';
import '../models/response/help_support_response_model.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ApiClient _apiClient;

  ProfileRepositoryImpl({required ApiClient apiClient})
      : _apiClient = apiClient;

  @override
  NetworkResult<GetStudentProfileResponseModel> fetchProfile() {
    return _apiClient.get(
      endpoint: ApiConstants.profile.fetchProfile,
      fromJsonT: (json) =>
          GetStudentProfileResponseModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  NetworkResult<HelpSupportResponseModel> helpAndSupport(
    HelpSupportRequestModel request,
  ) {
    return _apiClient.post(
      endpoint: ApiConstants.profile.helpSupport,
      fromJsonT: (json) => HelpSupportResponseModel.fromJson(json),
      data: request.toJson(),
    );
  }

  NetworkResult<GetStudentProfileResponseModel> updatePhoto(
    UpdateProfileRequestModel request,
  ) {
    return _apiClient.patch(
      endpoint: ApiConstants.profile.updateProfile,
      fromJsonT: (json) => GetStudentProfileResponseModel.fromJson(json),
      data: request.toJson(),
    );
  }

  @override
  NetworkResult<void> uploadPhoto(FormData request) {
    return _apiClient.patch(
      endpoint: ApiConstants.profile.updateProfile,
      formData: request,
      fromJsonT: (json) => [],
    );
  }

  @override
  NetworkResult<void> deleteAccount() {
    return _apiClient.delete(
      endpoint: ApiConstants.auth.delete_account,
      fromJsonT: (json) => [],
    );
  }
}
