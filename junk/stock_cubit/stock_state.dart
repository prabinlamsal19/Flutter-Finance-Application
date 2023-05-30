part of 'stock_cubit.dart';

abstract class StockState extends Equatable {
  const StockState();

  @override
  List<Object> get props => [];
}

class StockInitial extends StockState {}
