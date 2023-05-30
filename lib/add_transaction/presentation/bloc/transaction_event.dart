part of 'transaction_bloc.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object> get props => [];
}

class TransactionAddedEvent extends TransactionEvent {
  final TransactionModel transactionCard;
  TransactionAddedEvent({required this.transactionCard});
}
