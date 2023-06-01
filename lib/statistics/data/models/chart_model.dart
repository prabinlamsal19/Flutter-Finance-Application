import 'package:equatable/equatable.dart';

class PieChartData extends Equatable {
  final String category;
  final double value;

  PieChartData({required this.category, required this.value});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
