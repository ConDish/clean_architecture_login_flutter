import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class AppConstants {
  Future<void> initialize();

  String get getAPI;
}

class AppConstantsFromEnv implements AppConstants {
  @override
  Future<void> initialize() async {
    await dotenv.load(fileName: '.env');
  }

  @override
  String get getAPI => dotenv.get(kDebugMode ? 'API_URL_MOCK' : 'API_URL');
}
