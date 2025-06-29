import 'package:flutter/material.dart';

class AccountDetailPage extends StatelessWidget {
  const AccountDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account Details')),
      body: Column(
        children: [
          const Text('Spending Trend (placeholder)'),
          const SizedBox(height: 16),
          const Expanded(
            child: Center(child: Text('Transaction History Placeholder')),
          ),
        ],
      ),
    );
  }
}
