import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = 'http://10.0.2.2:3000'; // لاحقًا استبدله بـ سيرفرك

  static Future<Map<String, dynamic>> createOrder({
    required String pickup,
    required String dropoff,
    required int workers,
    required String vehicle,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/orders'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'pickup': pickup,
        'dropoff': dropoff,
        'workers': workers,
        'vehicle': vehicle,
      }),
    );

    return jsonDecode(response.body);
  }
}
