part of 'chart_bloc.dart';

abstract class ChartEvent extends Equatable {
  const ChartEvent();

  @override
  List<Object> get props => [];
}

class AddChartEvent extends ChartEvent {
  late List<PieChartData> data;
  PieChartData pieData;
  AddChartEvent({required this.pieData}) {
    data.add(pieData);
  }
}
