import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:personal_finance/statistics/data/models/chart_model.dart';

import '../../data/models/transaction_model.dart';
import '../../data/repository/local_transaction_storage.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  List<TransactionModel> transactionCardList = [];
  List<PieChartData> pieChartList = [];

  TransactionBloc() : super(TransactionInitialState()) {
    on<TransactionLoadEvent>((event, emit) async {

      var a = await displayStoredTransaction();
      for (var i in a) {
        transactionCardList.add(i);
        PieChartData pieOne =
            PieChartData(category: i.transactionType, value: i.amount);
        pieChartList.add(pieOne);
      }
      emit(TransactionAddedState(
          transactionCardList: transactionCardList,
          pieChartList: pieChartList));
    });

    on<TransactionAddedEvent>((event, emit) async {
      await storeTransactionLocally(event.transactionCard);
      transactionCardList = await displayStoredTransaction();
      List<PieChartData> newPieData = [];

      for (TransactionModel i in transactionCardList) {
        PieChartData pieData =
            PieChartData(category: i.transactionType, value: i.amount);
        newPieData.add(pieData);
      }
      pieChartList = newPieData;
      emit(TransactionAddedState(
          transactionCardList: transactionCardList,
          pieChartList: pieChartList));
    });

    on<TransactionDeletedEvent>((event, emit) {
      deleteSingleTransaction(event.transactionCard);
      transactionCardList.remove(event.transactionCard);
      PieChartData RemovedPie = PieChartData(
          category: event.transactionCard.transactionType,
          value: event.transactionCard.amount);
      pieChartList.remove(RemovedPie);
      emit(TransactionAddedState(
          transactionCardList: transactionCardList,
          pieChartList: pieChartList));
    });
  }
}
