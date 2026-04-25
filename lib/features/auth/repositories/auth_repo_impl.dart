

import '../../../core/api/api_client.dart';
import '../../../core/api/network_result.dart';
import '../../../core/constants/api_constants.dart';
import '../model/request/login_request_model.dart';
import '../model/request/reset_password_request_model.dart';
import '../model/request/security_question_match_request_model.dart';
import '../model/request/security_question_request_model.dart';
import '../model/response/login_response_model.dart';
import '../model/response/security_question_response_model.dart';
import 'auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiClient _apiClient;

  AuthRepositoryImpl({required ApiClient apiClient}) : _apiClient = apiClient;

  @override
  NetworkResult<LoginResponseModel> login(LoginRequestModel request){
    return _apiClient.post(
      endpoint: ApiConstants.auth.login,
      data: request.toJson(),
      fromJsonT: (json) => LoginResponseModel.fromJson(json),
    );
  }

  @override
  NetworkResult<SecurityQuestionMatchResponseModel> securityQuestionForResetPass(SecurityQuestionMatchRequestModel request){
    return _apiClient.post(
      endpoint: ApiConstants.auth.securityQuestionMatch,
      data: request.toJson(),
      fromJsonT: (json) => SecurityQuestionMatchResponseModel.fromJson(json),
    );
  }

  @override
  NetworkResult<void> securityQuestion(SecurityQuestionsRequestModel request){
    return _apiClient.post(
      endpoint: ApiConstants.auth.security5,
      data: request.toJson(),
        fromJsonT: (json) {}
    );
  }

  @override
  NetworkResult<void> createNewPassword(ResetPasswordRequestModel request){
    return _apiClient.post(
        endpoint: ApiConstants.auth.resetPass,
        data: request.toJson(),
        fromJsonT: (json) {});
  }
}
