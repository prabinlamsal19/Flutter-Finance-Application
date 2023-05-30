import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/transaction_model.dart';
import '../../data/repository/local_transaction_storage.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  //The initialization of transactionCardList happens here

  List<TransactionModel> transactionCardList = [];
  TransactionBloc() : super(TransactionInitialState()) {
    on<TransactionAddedEvent>((event, emit) async {
      transactionCardList.add(event.transactionCard);
      emit(TransactionAddedState(transactionCardList: transactionCardList));
      // add the new transaction card to the flutter secure storage also
      await storeTransactionLocally(event.transactionCard);
    });
  }
}
