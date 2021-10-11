import 'package:ecommerce_flutter/src/features/auth/presentation/pages/login/login.binding.dart';
import 'package:ecommerce_flutter/src/features/auth/presentation/pages/login/login.page.dart';
import 'package:get/get.dart';

import 'app.routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.loginRoute,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
