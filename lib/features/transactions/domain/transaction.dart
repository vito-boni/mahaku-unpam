enum TransactionType { income, expense }

class Transaction {
  final String id;
  final String accountId;
  final double amount;
  final String category;
  final String note;
  final DateTime date;
  final TransactionType type;
  final String color; // 17 defined colors + white, gray, black

  Transaction({
    required this.id,
    required this.accountId,
    required this.amount,
    required this.category,
    required this.note,
    required this.date,
    required this.type,
    required this.color,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      accountId: json['accountId'],
      amount: json['amount'],
      category: json['category'],
      note: json['note'],
      date: DateTime.parse(json['date']),
      type: json['type'] == 'income' ? TransactionType.income : TransactionType.expense,
      color: json['color'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'amount': amount,
        'category': category,
        'note': note,
        'date': date.toIso8601String(),
        'type': type.name,
        'color': color,
      };
}
