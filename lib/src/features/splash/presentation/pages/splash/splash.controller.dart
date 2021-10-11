import 'dart:async';

import 'package:get/get.dart';
import 'package:ecommerce_flutter/src/core/routes/app.routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    Get.offNamedUntil(AppRoutes.loginRoute, (route) => false);
  }
}
