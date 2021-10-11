import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/constants/app.constants.dart';
import 'core/http/connection.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await AppConstants.initialize();
  sl.registerLazySingleton<Dio>(() => getHttpClient(AppConstants.getAPI()));
}
