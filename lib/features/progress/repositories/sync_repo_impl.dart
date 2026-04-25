import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_sarpongoy_twelve/core/api/api_client.dart';
import 'package:flutter_sarpongoy_twelve/core/common/models/network_failure.dart';
import 'package:flutter_sarpongoy_twelve/core/common/models/network_success.dart';
import 'package:flutter_sarpongoy_twelve/core/constants/api_constants.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/models/progress_model.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/sync_repo.dart';

import '../../../core/api/network_result.dart';

class SyncRepoImpl implements SyncRepo {
  final ApiClient _apiClient;

  SyncRepoImpl({required ApiClient apiClient}) : _apiClient = apiClient;

  @override
  NetworkResult<void> syncStudentActivities(
      Map<String, dynamic> payload) async {
    return _apiClient.post(
      endpoint: ApiConstants.sync.syncStudentActivities,
      data: payload,
      fromJsonT: (json) => {},
    );
  }

  @override
  Future<Either<NetworkFailure, NetworkSuccess<List<ActivityProgress>>>>
      syncGetStudentActivities(String? since) async {
    final Map<String, dynamic> queryParameters = {
      'limit': 1000, // fetch all records in one call
    };
    if (since != null) {
      queryParameters['since'] = since;
    }

    return _apiClient.get(
      endpoint: ApiConstants.sync.syncGetStudentActivities,
      queryParameters: queryParameters,
      fromJsonT: (json) {
        if (json == null) return <ActivityProgress>[];

        // Backend returns { items: [...], meta: {...} }
        final rawList = (json is Map) ? (json['items'] ?? []) : json;

        return (rawList as List)
            .map(
              (e) => ActivityProgress.fromMap(Map<String, dynamic>.from(e)),
            )
            .toList();
      },
    );
  }
}
