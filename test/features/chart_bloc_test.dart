import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:personal_finance/features/statistics/data/models/chart_model.dart';
import 'package:personal_finance/features/statistics/presentation/bloc/chart_bloc.dart';

void main() {
  group('ChartBloc', () {
    late ChartBloc chartBloc;

    setUp(() {
      chartBloc = ChartBloc();
    });

    tearDown(() {
      chartBloc.close();
    });

    test('initial state is ChartInitialState', () {
      expect(chartBloc.state, ChartInitialState());
    });

    blocTest<ChartBloc, ChartState>(
      'emits [ChartLoadingState, AddChartState] when AddChartEvent is added',
      build: () => chartBloc,
      act: (bloc) => bloc.add(AddChartEvent(
          pieData: PieChartData(category: 'Category 1', value: 10.0))),
      expect: () => [
        ChartLoadingState(),
        AddChartState(
            data: [PieChartData(category: 'Category 1', value: 10.0)]),
      ],
    );

    blocTest<ChartBloc, ChartState>(
      'emits [ChartLoadingState, AddChartState] when AddChartEvent is added with named parameters',
      build: () => chartBloc,
      act: (bloc) => bloc.add(AddChartEvent(
          pieData: PieChartData(category: 'Category 1', value: 10.0))),
      expect: () => [
        ChartLoadingState(),
        AddChartState(
            data: [PieChartData(category: 'Category 1', value: 10.0)]),
      ],
    );
  });
}
