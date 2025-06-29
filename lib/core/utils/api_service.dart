import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://your-backend.com/api';

  Future<http.Response> get(String path, {Map<String, String>? headers}) {
    return http.get(Uri.parse('$baseUrl$path'), headers: headers);
  }

  Future<http.Response> post(String path, Map<String, dynamic> body, {Map<String, String>? headers}) {
    return http.post(
      Uri.parse('$baseUrl$path'),
      headers: {
        'Content-Type': 'application/json',
        ...?headers,
      },
      body: jsonEncode(body),
    );
  }

  Future<http.Response> put(String path, Map<String, dynamic> body, {Map<String, String>? headers}) {
    return http.put(
      Uri.parse('$baseUrl$path'),
      headers: {
        'Content-Type': 'application/json',
        ...?headers,
      },
      body: jsonEncode(body),
    );
  }

  Future<http.Response> delete(String path, {Map<String, String>? headers}) {
    return http.delete(Uri.parse('$baseUrl$path'), headers: headers);
  }
}
