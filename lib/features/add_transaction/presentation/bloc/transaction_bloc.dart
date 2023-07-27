import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:personal_finance/features/statistics/presentation/bloc/chart_bloc.dart';

import '../../data/models/transaction_model.dart';
import '../../data/repository/local_transaction_storage.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  List<TransactionModel> transactionCardList = [];

  TransactionBloc() : super(TransactionInitialState()) {
    on<TransactionLoadEvent>((event, emit) async {
      print("Control comes to Transaction Load event");

      var a = await displayStoredTransaction();
      for (var i in a) {
        transactionCardList.add(i);
      }
      emit(TransactionAddedState(transactionCardList: transactionCardList));
      print(
          "Control goes to transaction added state. Initial data should be shown. Length: ${transactionCardList.length}");
    });

    on<TransactionAddedEvent>((event, emit) async {
      transactionCardList.add(event.transactionCard);
      await storeTransactionLocally(event.transactionCard);
      transactionCardList = await displayStoredTransaction()!;
      emit(TransactionAddedState(transactionCardList: transactionCardList));
    });

    on<TransactionDeletedEvent>((event, emit) {
      transactionCardList.remove(event.transactionCard);
      emit(TransactionAddedState(transactionCardList: transactionCardList));
    });
  }
}
