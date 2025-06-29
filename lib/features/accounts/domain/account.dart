class Account {
  final String id;
  final String name; // e.g. "Cash", "Bank BCA", "Travel Fund"
  final double balance;
  final String icon; // optional: could be an emoji or icon code

  Account({
    required this.id,
    required this.name,
    required this.balance,
    required this.icon,
  });

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'],
      name: json['name'],
      balance: json['balance'],
      icon: json['icon'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'balance': balance,
        'icon': icon,
      };
}
