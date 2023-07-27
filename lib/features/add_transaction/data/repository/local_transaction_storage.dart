import 'dart:convert';
import 'dart:math';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/transaction_model.dart';

const storage = FlutterSecureStorage();

Future<void> storeTransactionLocally(TransactionModel transaction) async {
  final storedData = await storage.read(key: 'transactions');
  List<TransactionModel> transactionList = [];

  if (storedData != null) {
    final decodedData = jsonDecode(storedData);
    if (decodedData is List) {
      transactionList =
          decodedData.map((item) => TransactionModel.fromJson(item)).toList();
    }
  }
  transactionList.add(transaction);
  final updatedData = jsonEncode(transactionList);
  await storage.write(key: 'transactions', value: updatedData);
}

Future<List<TransactionModel>> displayStoredTransaction() async {
  final jsonString = await storage.read(key: 'transactions');
  if (jsonString != null) {
    final decodedData = jsonDecode(jsonString);
    if (decodedData is List) {
      final transactionList =
          decodedData.map((item) => TransactionModel.fromJson(item)).toList();
      return transactionList;
    }
  }
  return [];
}

Future<void> deleteAllTransactionsLocally() async {
  await storage.delete(key: 'transactions');
}
