import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = 'http://10.0.2.2:3000';

  static Future<List> getOrders() async {
    final response = await http.get(Uri.parse('$baseUrl/orders'));
    return jsonDecode(response.body);
  }

  static Future acceptOrder(int id) async {
    await http.post(
      Uri.parse('$baseUrl/orders/accept/$id'),
      headers: {'Content-Type': 'application/json'},
    );
  }
}
