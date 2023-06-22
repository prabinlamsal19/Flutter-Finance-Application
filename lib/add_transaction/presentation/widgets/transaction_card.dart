import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/add_transaction/data/models/transaction_model.dart';
import 'package:personal_finance/add_transaction/presentation/bloc/transaction_bloc.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel cardModel;

  const TransactionCard({Key? key, required this.cardModel}) : super(key: key);

  Color getCardColor() {
    switch (cardModel.transactionType) {
      case "Transfer":
        return Colors.yellow;
      case "Income":
        return Colors.green;
      case "Expense":
        return Colors.red;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    String date =
        "${cardModel.date.year}/${cardModel.date.month}/${cardModel.date.day}";
    return InkWell(
      onLongPress: () {
        BlocProvider.of<TransactionBloc>(context)
            .add(TransactionDeletedEvent(transactionCard: cardModel));
      },
      child: Container(
        decoration: BoxDecoration(
          color: getCardColor(),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.black, width: 2.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardModel.paymentMethod,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontFamily: "EBGaramond"),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${cardModel.amount}",
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          fontFamily: "EBGaramond"),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                child: Row(
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          fontFamily: "EBGaramond"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
