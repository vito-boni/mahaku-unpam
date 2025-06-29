import 'dart:convert';
import '../../../core/utils/api_service.dart';
import '../domain/transaction.dart';

class TransactionRepository {
  final ApiService api;

  TransactionRepository({required this.api});

  Future<List<Transaction>> getTransactions(String accountId) async {
    final response = await api.get('/accounts/$accountId/transactions');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List;
      return data.map((e) => Transaction.fromJson(e)).toList();
    } else {
      return [];
    }
  }

  Future<bool> createTransaction(Transaction tx) async {
    final response = await api.post('/transactions', tx.toJson());
    return response.statusCode == 201;
  }

  Future<bool> deleteTransaction(String id) async {
    final response = await api.delete('/transactions/$id');
    return response.statusCode == 204;
  }
}
