import 'package:flutter_test/flutter_test.dart';
import 'package:personal_finance/statistics/data/models/chart_model.dart';
import 'package:personal_finance/statistics/presentation/bloc/chart_bloc.dart';
import 'package:bloc_test/bloc_test.dart';

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
      expect(chartBloc.state, equals(ChartInitialState()));
    });

    blocTest<ChartBloc, ChartState>(
      'emits AddChartState when AddChartEvent is added',
      build: () => chartBloc,
      act: (bloc) => bloc.add(AddChartEvent(
          pieData: PieChartData(category: 'Category', value: 10.0))),
      expect: () => [isA<AddChartState>()],
    );
  });
}
