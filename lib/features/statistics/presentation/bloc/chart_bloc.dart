import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../add_transaction/data/models/transaction_model.dart';
import '../../../add_transaction/data/repository/local_transaction_storage.dart';
import '../../data/models/chart_model.dart';
part 'chart_event.dart';
part 'chart_state.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  //initialize the list
  List<PieChartData> PieChartList = [];

  ChartBloc() : super(ChartInitialState()) {
    on<ChartLoadEvent>(
      (event, emit) async {
        print("Chart load event called");
        emit(ChartLoadingState());
        List<TransactionModel> storedTransactions =
            await displayStoredTransaction();
        for (TransactionModel transaction in storedTransactions) {
          PieChartData pie = PieChartData(
              category: transaction.transactionType, value: transaction.amount);
          PieChartList.add(pie);
        }
        emit(AddChartState(data: PieChartList));
        print("Length of PieChartList is ${PieChartList.length}");
      },
    );

    // on<AddChartEvent>((event, emit) async {
    //   print("add chart event called");
    //   // emit(ChartLoadingState());
    //   // PieChartList.add(event.pieData);
    //   // emit(AddChartState(data: PieChartList));
    //   print("AddChartState emitted");
    // });
  }
}
