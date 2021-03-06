import 'package:firstflut/controllers/user_controller.dart';
import 'package:get/get.dart';

class InstanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
  }
}
