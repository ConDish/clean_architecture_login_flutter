import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class AppConstants {
  static Future<void> initialize() async {
    await dotenv.load(fileName: '.env');
  }

  static String getAPI() {
    return dotenv.get(kDebugMode ? 'API_URL_MOCK' : 'API_URL');
  }
}
