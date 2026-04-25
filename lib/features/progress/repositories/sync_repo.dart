import 'package:dartz/dartz.dart';
import 'package:flutter_sarpongoy_twelve/core/api/network_result.dart';
import 'package:flutter_sarpongoy_twelve/core/common/models/network_failure.dart';
import 'package:flutter_sarpongoy_twelve/core/common/models/network_success.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';

abstract class SyncRepo {
  NetworkResult<void> syncStudentActivities(Map<String, dynamic> payload);

  Future<Either<NetworkFailure, NetworkSuccess<List<ActivityProgress>>>>
      syncGetStudentActivities(String? since);
}
