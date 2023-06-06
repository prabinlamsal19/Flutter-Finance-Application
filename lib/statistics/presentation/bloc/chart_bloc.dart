import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/models/chart_model.dart';

part 'chart_event.dart';
part 'chart_state.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  //initialize the list
  List<PieChartData> PieChartList = [];

  ChartBloc() : super(ChartInitialState()) {
    on<AddChartEvent>((event, emit) {
      emit(ChartLoadingState());
      PieChartList.add(event.pieData);
      emit(AddChartState(data: PieChartList));
      print("AddChartState emitted");
    });
  }
}
