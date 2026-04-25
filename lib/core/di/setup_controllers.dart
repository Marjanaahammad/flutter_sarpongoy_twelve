import 'package:flutter_sarpongoy_twelve/features/auth/controller/auth_controller.dart';
import 'package:flutter_sarpongoy_twelve/features/profile/controller/profile_controller.dart';
import 'package:get/get.dart';

import '../../features/sidebar/controller/sidebar_controller.dart';
import '../../features/teacher_profile/presentation/controller/profile_controller.dart';
import '../services/sync_service.dart';
import '../utils/getx_helper.dart';

Future<void> setupControllers() async {
  Get.getOrPutLazy(() => AuthController(), fenix: true);
  Get.getOrPutLazy(() => ProfileController(), fenix: true);
  Get.getOrPutLazy(() => SidebarController(), fenix: true);
  // Get.getOrPutLazy(() => SeriesController(), fenix: true);
  Get.getOrPutLazy(() => TeacherProfileController(), fenix: true);

  // Register SyncService as a permanent GetX service
  Get.getOrPutLazy(() => SyncService(), fenix: true);
}
