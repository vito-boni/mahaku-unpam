import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello, [Name]'),
        actions: [
          IconButton(
            icon: const CircleAvatar(child: Icon(Icons.person)),
            onPressed: () => context.go('/profile'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Accounts', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          ListTile(
            title: const Text('Cash'),
            subtitle: const Text('Balance: 120000'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
              ],
            ),
            onTap: () => context.go('/account/1'),
          ),
        ],
      ),
    );
  }
}
