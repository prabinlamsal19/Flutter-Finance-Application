import 'package:equatable/equatable.dart';

class PieChartData extends Equatable {
  final String category;
  late final double value;

  PieChartData({required this.category, required this.value});

  @override
  List<Object?> get props => [category, value];
}
