import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:personal_finance/add_transaction/data/models/transaction_model.dart';
import '../../data/models/chart_model.dart';

part 'chart_event.dart';
part 'chart_state.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  //initialize the list
  List<PieChartData> PieChartList = [];

  ChartBloc() : super(ChartInitialState()) {
    on<AddChartEvent>((event, emit) {
      print("add chart event called");
      emit(ChartLoadingState());
      PieChartList.add(event.pieData);
      emit(AddChartState(data: PieChartList));
      print("AddChartState emitted");
    });
  }
}
