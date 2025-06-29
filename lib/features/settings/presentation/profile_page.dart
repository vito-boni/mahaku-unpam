import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: ListView(
        children: [
          ListTile(title: const Text('Username'), subtitle: const Text('[user123]')),
          ListTile(title: const Text('Email'), subtitle: const Text('user@example.com')),
          ListTile(
            title: const Text('Change Password'),
            onTap: () {}, // handle password change
          ),
          ListTile(
            title: const Text('App Settings'),
            onTap: () => context.go('/settings'),
          ),
        ],
      ),
    );
  }
}
