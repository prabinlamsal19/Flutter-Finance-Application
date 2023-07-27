// ignore_for_file: must_be_immutable

part of 'chart_bloc.dart';

abstract class ChartEvent extends Equatable {
  const ChartEvent();

  @override
  List<Object> get props => [];
}

class ChartLoadEvent extends ChartEvent {}

class AddChartEvent extends ChartEvent {
  // List<PieChartData> data=[];
  PieChartData pieData;
  AddChartEvent({required this.pieData});
}
