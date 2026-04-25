import 'package:get/get.dart';

class LoginAsController extends GetxController {
  final RxnString selectedRole = RxnString();

  void selectRole(String role) {
    selectedRole.value = role;
  }
}
