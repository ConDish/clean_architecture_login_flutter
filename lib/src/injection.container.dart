import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/constants/app.constants.dart';
import 'core/http/connection.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final appConstants = AppConstantsFromEnv();
  await appConstants.initialize();
  sl.registerLazySingleton<AppConstants>(() => appConstants);

  sl.registerLazySingleton<Dio>(
    () => getHttpClient(sl.get<AppConstants>().getAPI),
  );
}
