import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/login_page.dart';
import '../features/auth/presentation/register_page.dart';
import '../features/accounts/presentation/home_page.dart';
import '../features/settings/presentation/profile_page.dart';
import '../features/accounts/presentation/account_detail_page.dart';
import '../features/settings/presentation/settings_page.dart';


final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/register', builder: (context, state) => const RegisterPage()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(path: '/profile', builder: (context, state) => const ProfilePage()),
      GoRoute(path: '/account/:id', builder: (context, state) => const AccountDetailPage()),
      GoRoute(path: '/settings', builder: (context, state) => const SettingsPage()),
    ],
  );
});
