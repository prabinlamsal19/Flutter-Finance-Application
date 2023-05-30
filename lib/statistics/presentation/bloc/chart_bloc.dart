import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/chart_model.dart';

part 'chart_event.dart';
part 'chart_state.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  ChartBloc() : super(ChartInitialState()) {
    on<ChartEvent>((event, emit) {
      emit(ChartInitialState());
    }); 

    on<AddChartEvent>(  
      (event,emit){ 
        emit(AddChartState(data: event.data));
      }
    );
  }
}
