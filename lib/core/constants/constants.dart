import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiService {
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static final FlutterSecureStorage storage = FlutterSecureStorage();

  static String get apiKey => dotenv.env['API_KEY'] ?? 'default_key';

  static String currentWeatherByName(String city) =>
      '$baseUrl/weather?q=$city&appid=$apiKey';

  static String weatherIcon(String iconCode) =>
      'http://openweathermap.org/img/wn/$iconCode@2x.png';

  // Storing the API key (if needed)
  static Future<void> storeApiKey() async {
    await storage.write(key: 'api_key', value: apiKey);
  }

  // Reading the API key (if needed)
  static Future<String?> readApiKey() async {
    return await storage.read(key: 'api_key');
  }
}
