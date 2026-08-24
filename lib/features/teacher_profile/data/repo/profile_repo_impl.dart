import 'package:dio/dio.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/request/help_support_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/response/help_support_response_model.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher_profile/data/model/teacher_get_profile_response_model.dart';

import '../../../../core/api/api_client.dart';
import '../../../../core/api/network_result.dart';
import '../../../../core/constants/api_constants.dart';
import '../../domain/repo/profile_repo.dart';
import '../model/update_teacher_profile_response_model.dart';

class TeacherProfileRepositoryImpl implements TeacherProfileRepository {
  final ApiClient _apiClient;

  TeacherProfileRepositoryImpl({required ApiClient apiClient})
      : _apiClient = apiClient;

  @override
  NetworkResult<TeacherProfileResponseModel> fetchProfile() {
    return _apiClient.get(
      endpoint: ApiConstants.teachprofile.fetchProfile,
      fromJsonT: (json) =>
          TeacherProfileResponseModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  NetworkResult<UpdateTeacherProfileResponseModel> updateProfile(
    FormData formData,
  ) {
    return _apiClient.patch(
      endpoint: ApiConstants.teachprofile.updateProfile,
      formData: formData,
      fromJsonT: (json) => UpdateTeacherProfileResponseModel.fromJson(json),
    );
  }

  @override
  NetworkResult<HelpSupportResponseModel> helpAndSupport(
    HelpSupportRequestModel request,
  ) {
    return _apiClient.post(
      endpoint: ApiConstants.teachprofile.helpSupport,
      fromJsonT: (json) => HelpSupportResponseModel.fromJson(json),
      data: request.toJson(),
    );
  }
}
