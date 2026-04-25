import 'package:flutter_sarpongoy_twelve/features/auth/model/request/reset_password_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/model/request/security_question_match_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/model/request/security_question_request_model.dart';
import 'package:flutter_sarpongoy_twelve/features/auth/model/response/login_response_model.dart';

import '../../../core/api/network_result.dart';
import '../model/request/login_request_model.dart';
import '../model/response/security_question_response_model.dart';

abstract class AuthRepository {
  NetworkResult<LoginResponseModel> login(LoginRequestModel request);

  NetworkResult<void> securityQuestion(SecurityQuestionsRequestModel request);

  NetworkResult<SecurityQuestionMatchResponseModel>
      securityQuestionForResetPass(SecurityQuestionMatchRequestModel request);
  NetworkResult<void> createNewPassword(ResetPasswordRequestModel request);
}
