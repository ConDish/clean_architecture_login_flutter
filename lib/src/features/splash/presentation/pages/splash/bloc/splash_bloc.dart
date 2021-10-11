import 'dart:async';

import 'package:bloc/bloc.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(InitState()) {
    on<ValidateInitEvent>(_onValidateInitEvent);
  }

  FutureOr<void> _onValidateInitEvent(
    ValidateInitEvent event,
    Emitter<SplashState> emit,
  ) async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    emit(GoToSignIn());
  }
}
