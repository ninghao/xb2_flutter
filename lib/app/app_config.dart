import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get apiBaseUrl =>
      dotenv.get('API_BASE_URL', fallback: 'https://nid-node.ninghao.co');
}
