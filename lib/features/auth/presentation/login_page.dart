import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Username')),
            const TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () => context.go('/register'),
              child: const Text('Create Account'),
            ),
            TextButton(
              onPressed: () {}, // forgot password logic
              child: const Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}