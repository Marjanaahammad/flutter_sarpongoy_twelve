import 'package:flutter_sarpongoy_twelve/core/utils/getx_helper.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/repositories/profile_repo.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/repositories/profile_repo_impl.dart';
import 'package:flutter_sarpongoy_twelve/features/progress/repositories/sync_repo_impl.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/data/repo/teachDashboard_impl.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher/domain/repo/teachDashboard_repo.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher_profile/data/repo/profile_repo_impl.dart';
import 'package:flutter_sarpongoy_twelve/features/teacher_profile/domain/repo/profile_repo.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../../features/auth/repositories/auth_repo.dart';
import '../../features/auth/repositories/auth_repo_impl.dart';
import '../../features/progress/repositories/progress_repository.dart';
import '../../features/progress/repositories/bece_progress_repository.dart';
import '../../features/progress/repositories/sync_repo.dart';

Future<void> setupRepository() async {
  Get.lazyPut<AuthRepository>(
    () => AuthRepositoryImpl(apiClient: Get.find()),
    fenix: true,
  );
  //
  Get.lazyPut<ProfileRepository>(
    () => ProfileRepositoryImpl(apiClient: Get.find()),
    fenix: true,
  );

  Get.lazyPut<ProgressRepository>(() => ProgressRepository(), fenix: true);
  Get.lazyPut<BeceProgressRepository>(() => BeceProgressRepository(), fenix: true);

  Get.lazyPut<SyncRepo>(() => SyncRepoImpl(apiClient: Get.find()), fenix: true);
  Get.getOrPutLazy<TeacherProfileRepository>(
    () => TeacherProfileRepositoryImpl(apiClient: Get.find()),
    fenix: true,
  );

  //
  Get.getOrPutLazy<TeachDashboardRepository>(
    () => TeachdashboardImpl(apiClient: Get.find()),
    fenix: true,
  );
  //
  // Get.getOrPutLazy<SeriesRepo>(
  //   () => SeriesRepoImpl(apiClient: Get.find()),
  //   fenix: true,
  // );
}
