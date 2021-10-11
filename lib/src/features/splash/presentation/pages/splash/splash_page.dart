import 'package:ecommerce_flutter/src/features/auth/presentation/pages/login/login.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  static String route = "/splash";

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(ValidateInitEvent()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is GoToSignIn) {
            Navigator.pushNamed(
              context,
              LoginPage.route,
            );
          }
        },
        child: Scaffold(
          body: Center(
            child: Text(
              'Hello World',
            ),
          ),
        ),
      ),
    );
  }
}
