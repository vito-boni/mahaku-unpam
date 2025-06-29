import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Username')),
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/login'),
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
