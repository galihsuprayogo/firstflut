import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirm;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
    confirm = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    email.dispose();
    password.dispose();
    confirm.dispose();
  }

  void snackBarError(String msg) {
    Get.snackbar(
      "ERROR",
      msg,
      duration: Duration(seconds: 2),
    );
  }
}
