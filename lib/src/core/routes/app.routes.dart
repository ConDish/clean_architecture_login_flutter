import 'package:ecommerce_flutter/src/features/auth/presentation/pages/login/login.page.dart';
import 'package:ecommerce_flutter/src/features/splash/presentation/pages/splash/splash_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static final initialRoute = SplashPage.route;

  static Map<String, WidgetBuilder> routes() => {
        SplashPage.route: (_) => SplashPage(),
        LoginPage.route: (_) => LoginPage(),
      };
}
