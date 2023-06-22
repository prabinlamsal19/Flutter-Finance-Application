part of 'transaction_bloc.dart';

abstract class TransactionState {}

class TransactionInitialState extends TransactionState {}

class TransactionAddedState extends TransactionState {
  List<TransactionModel> transactionCardList;
  List<PieChartData> pieChartList;

  TransactionAddedState(
      {required this.transactionCardList, required this.pieChartList});
}

class TransactionClearedState extends TransactionState {}
