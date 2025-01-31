class Transaction {
  String title;
  double amount;
  DateTime date;

  Transaction({
    required this.title,
    required this.amount,
    DateTime? date, //
  }) : date = date ?? DateTime.now();

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      title: json['title'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'amount': amount,
      'date': date.toIso8601String(),
    };
  }
}
