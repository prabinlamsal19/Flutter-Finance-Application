class TransactionModel {
  String transactionType;
  DateTime date;
  double amount;
  String note;
  String paymentMethod;
  String description;

  TransactionModel(
      {required this.transactionType,
      required this.date,
      required this.amount,
      required this.note,
      required this.paymentMethod,
      required this.description});

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      transactionType: json['transactionType'],
      date: DateTime.parse(json['date']),
      amount: json['amount'].toDouble(),
      paymentMethod: json['paymentMethod'],
      note: json['note'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'transactionType': transactionType,
      'date': date.toIso8601String(),
      'amount': amount,
      'note': note,
      'paymentMethod': paymentMethod,
      'description': description,
    };
  }
}
