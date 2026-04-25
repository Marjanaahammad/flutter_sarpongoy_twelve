import 'package:get/get.dart';
import '../services/sync_service.dart';

Future<void> setupServices() async {
  Get.lazyPut(() => SyncService(), fenix: true);
}
