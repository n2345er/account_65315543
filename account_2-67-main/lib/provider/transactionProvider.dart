import 'package:account/model/transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'หนังสือ', amount: 1000, date: DateTime(2024, 1, 30)),
    Transaction(title: 'เสื้อยืด', amount: 200, date: DateTime(2024, 1, 29)),
    Transaction(title: 'รองเท้า', amount: 1500, date: DateTime(2024, 1, 28)),
    Transaction(title: 'กระเป๋า', amount: 1000, date: DateTime(2024, 1, 27)),
    Transaction(title: 'KFC', amount: 300, date: DateTime(2024, 1, 26)),
    Transaction(title: 'McDonald', amount: 200, date: DateTime(2024, 1, 25)),
  ];

  List<Transaction> getTransaction() {
    return transactions;
  }

  void addTransaction(Transaction transaction) {
    transactions.add(transaction);
    notifyListeners();
  }
}
