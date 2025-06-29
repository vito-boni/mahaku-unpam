import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/account.dart';
import '../data/dummy_accounts.dart'; // replace later with backend fetch

final accountListProvider = StateProvider<List<Account>>((ref) {
  return dummyAccounts;
});
