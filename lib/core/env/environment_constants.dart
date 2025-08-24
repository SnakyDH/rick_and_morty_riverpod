import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConstants {
  static String apiUrl = dotenv.env['API_URL'] ?? '';
  EnvironmentConstants._();

  static Future<void> initEnvironment() async {
    await dotenv.load(fileName: '.env');
  }
}
