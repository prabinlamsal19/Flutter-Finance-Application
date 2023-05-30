import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'stock_state.dart';

class StockCubit extends Cubit<StockState> {
  StockCubit() : super(StockInitial());
}
