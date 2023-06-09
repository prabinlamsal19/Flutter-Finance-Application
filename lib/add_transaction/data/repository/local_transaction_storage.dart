import 'dart:convert';
import 'dart:math';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/transaction_model.dart';

const storage = FlutterSecureStorage();

//for storing data - not as an array - single model data

// Future<void> storeTransactionLocally(TransactionModel transaction) async {
//   final data = {
//     'transactionType': transaction.transactionType,
//     'date': transaction.date.toString(),
//     'amount': transaction.amount.toString(),
//     'note': transaction.note,
//     'paymentMethod': transaction.paymentMethod,
//     'description': transaction.description,
//   };

//   await storage.write(key: 'transaction', value: jsonEncode(data));
//   print("The data is stored successfully");
// }

//for stroring as an array

Future<void> storeTransactionLocally(TransactionModel transaction) async {
  final storedData = await storage.read(key: 'transactions');
  List<dynamic> transactionList = [];

  if (storedData != null) {
    transactionList = jsonDecode(storedData).cast<dynamic>();
  }

  transactionList.add(transaction.toJson()); // Assuming toJson() returns a Map

  final updatedData = jsonEncode(transactionList);

  await storage.write(key: 'transactions', value: updatedData);
  print("The data is stored successfully");
}

//for retrieving data

// Future<void> displayStoredTransaction() async {
//   final jsonString = await storage.read(key: 'transaction');
//   if (jsonString != null) {
//     final data = jsonDecode(jsonString);
//     final transaction = TransactionModel(
//       transactionType: data['transactionType'],
//       date: DateTime.parse(data['date']),
//       amount: double.parse(data['amount']),
//       note: data['note'],
//       paymentMethod: data['paymentMethod'],
//       description: data['description'],
//     );

//     print('Stored Transaction:');
//     print('Type: ${transaction.transactionType}');
//     print('Date: ${transaction.date}');
//     print('Amount: ${transaction.amount}');
//     print('Note: ${transaction.note}');
//     print('Payment Method: ${transaction.paymentMethod}');
//     print('Description: ${transaction.description}');
//   } else {
//     print('No transaction data found.');
//   }
// }
//for displaying the whole array:
Future<void> displayStoredTransaction() async {
  final jsonString = await storage.read(key: 'transactions');
  if (jsonString != null) {
    final transactionList = jsonDecode(jsonString) as List<dynamic>;

    print('Stored Transactions:');
    for (var transactionData in transactionList) {
      final transaction = TransactionModel.fromJson(transactionData);
      print('Type: ${transaction.transactionType}');
      print('Date: ${transaction.date}');
      print('Amount: ${transaction.amount}');
      print('Note: ${transaction.note}');
      print('Payment Method: ${transaction.paymentMethod}');
      print('Description: ${transaction.description}');
      print('------------------------');
    }
  } else {
    print('No transaction data found.');
  }
}
