import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme_provider.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: isDark,
            onChanged: (_) => ref.read(themeProvider.notifier).toggleTheme(),
          ),
          const ListTile(
            title: Text('App Version'),
            subtitle: Text('v1.0.0'),
          ),
          const ListTile(
            title: Text('Log Out'),
            onTap: null, // placeholder
          ),
        ],
      ),
    );
  }
}
