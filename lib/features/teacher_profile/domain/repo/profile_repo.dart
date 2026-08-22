import 'package:dio/dio.dart';
import 'package:flutter_sarpongoy_twelve/core/api/network_result.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/request/help_support_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/models/response/help_support_response_model.dart';

import '../../data/model/teacher_get_profile_response_model.dart';
import '../../data/model/update_teacher_profile_response_model.dart';

abstract class TeacherProfileRepository {
  NetworkResult<TeacherProfileResponseModel> fetchProfile();
  NetworkResult<UpdateTeacherProfileResponseModel> updateProfile(
    FormData formData,
  );
  NetworkResult<HelpSupportResponseModel> helpAndSupport(
    HelpSupportRequestModel request,
  );
}
