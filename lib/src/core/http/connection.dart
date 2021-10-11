import 'package:dio/dio.dart';

Dio getHttpClient(String baseApiUrl) {
  Dio dio = Dio(BaseOptions(
    baseUrl: baseApiUrl,
  ));

  return dio;
}
