import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/utils/api_service.dart';
import '../domain/user.dart';
import 'dart:convert';


final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(api: ApiService());
});

class AuthRepository {
  final ApiService api;

  AuthRepository({required this.api});

  Future<User?> login(String username, String password) async {
    final response = await api.post('/login', {
      'username': username,
      'password': password,
    });

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  Future<bool> register(String username, String email, String password) async {
    final response = await api.post('/register', {
      'username': username,
      'email': email,
      'password': password,
    });

    return response.statusCode == 201;
  }
}