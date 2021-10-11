import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash.controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => const Scaffold(
        body: Text('Hello World'),
      ),
    );
  }
}
