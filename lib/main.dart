import 'package:ecommerce_flutter/src/core/routes/app.routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/core/theme/light/app.light.theme.dart';
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
      builder: () => MaterialApp(
        title: 'Ecommerce',
        theme: appTheme,
        builder: (BuildContext context, Widget? widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget ?? Container(),
          );
        },
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.routes(),
      ),
    );
  }
}
