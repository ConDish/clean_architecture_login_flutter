import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'src/core/routes/app.pages.dart';
import 'src/core/theme/light/app.light.theme.dart';
import 'src/features/splash/presentation/pages/splash/splash.binding.dart';
import 'src/features/splash/presentation/pages/splash/splash.page.dart';
import 'src/injection.container.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => GetMaterialApp(
        title: 'Ecommerce',
        debugShowCheckedModeBanner: kDebugMode,
        theme: appTheme,
        builder: (BuildContext context, Widget? widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget ?? Container(),
          );
        },
        getPages: AppPages.pages,
        defaultTransition: Transition.cupertino,
        popGesture: true,
        home: const SplashPage(),
        initialBinding: SplashBinding(),
      ),
    );
  }
}
