import '../domain/transaction.dart';

final dummyTransactions = [
  Transaction(
    id: 'tx1',
    accountId: '1',
    amount: 25000,
    category: 'Food',
    note: 'Lunch at campus',
    date: DateTime.now().subtract(const Duration(days: 1)),
    type: TransactionType.expense,
    color: 'red',
  ),
  Transaction(
    id: 'tx2',
    accountId: '1',
    amount: 100000,
    category: 'Scholarship',
    note: 'Monthly allowance',
    date: DateTime.now().subtract(const Duration(days: 3)),
    type: TransactionType.income,
    color: 'green',
  ),
];
