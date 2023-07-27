part of 'chart_bloc.dart';

abstract class ChartState extends Equatable {
  const ChartState();

  @override
  List<Object> get props => [];
}

class ChartInitialState extends ChartState {}

class ChartLoadingState extends ChartState {}

class AddChartState extends ChartState {
  final List<PieChartData> data;
  const AddChartState({required this.data});
}
