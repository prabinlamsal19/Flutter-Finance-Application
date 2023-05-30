part of 'transaction_bloc.dart';

abstract class TransactionState {}

class TransactionInitialState extends TransactionState {}

class TransactionAddedState extends TransactionState {
  List<TransactionModel> transactionCardList;

  TransactionAddedState({required this.transactionCardList});
}
