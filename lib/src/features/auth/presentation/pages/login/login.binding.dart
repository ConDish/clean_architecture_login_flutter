import 'package:get/get.dart';

import 'login.controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // Controllers
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
