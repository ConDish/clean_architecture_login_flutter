import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => const Scaffold(
        body: Text('Hello World Login'),
      ),
    );
  }
}
