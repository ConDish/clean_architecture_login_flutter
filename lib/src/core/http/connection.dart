import 'package:dio/dio.dart';

Dio getHttpClient(baseApiUrl) {
  Dio dio = Dio(BaseOptions(
    baseUrl: baseApiUrl,
  ));

  return dio;
}
