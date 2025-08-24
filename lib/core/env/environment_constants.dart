import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String apiUrl = dotenv.env['API_URL'] ?? '';
  Environment._();

  static Future<void> initEnvironment() async {
    await dotenv.load(fileName: '.env');
  }
}
