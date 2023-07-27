// ignore_for_file: must_be_immutable

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../profile/presentation/widgets/splash_screen.dart';
import '../../data/models/chart_model.dart';
import '../bloc/chart_bloc.dart';

@RoutePage()
class PieChartScreen extends StatelessWidget {
  void addData(PieChartData newData) {
    data?.add(newData);
  }

  List<PieChartData>? data = [];
  double incomeValue = 0;
  double expenseValue = 0;
  double transferValue = 0;

  PieChartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChartBloc, ChartState>(
      builder: (context, state) {
        if (state is ChartInitialState) {
          BlocProvider.of<ChartBloc>(context).add(ChartLoadEvent());
          return const Center(child: Text("Add transactions to view chart 1"));
        } else if (state is AddChartState) {
          data = state.data;
          if (data != null) {
            incomeValue = 0;
            expenseValue = 0;
            transferValue = 0;
            for (final eachData in data!) {
              if (eachData.category == "Income") {
                incomeValue = incomeValue + eachData.value;
              } else if (eachData.category == "Expense") {
                expenseValue = expenseValue + eachData.value;
              } else {
                transferValue = transferValue + eachData.value;
              }
            }
          }
          List<PieChartData> finalData = [
            PieChartData(category: "Income", value: incomeValue),
            PieChartData(category: "Expense", value: expenseValue),
            PieChartData(category: "Transfer", value: transferValue)
          ];

          if (data != null) {
            return Scaffold(
              body: Stack(
                children: [
                  Center(
                    child: SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<PieChartData, String>(
                          dataSource: finalData,
                          xValueMapper: (PieChartData finalData, _) =>
                              finalData.category,
                          yValueMapper: (PieChartData finalData, _) =>
                              finalData.value,
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                            labelPosition: ChartDataLabelPosition.outside,
                          ),
                          pointColorMapper: (PieChartData finalData, _) {
                            if (finalData.category == "Income") {
                              return Colors.green;
                            } else if (finalData.category == "Expense") {
                              return Colors.red;
                            } else {
                              return Colors.yellow;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 114, 109, 109),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Index',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          for (int i = 0; i < finalData.length; i++)
                            Row(
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    color: getChartColor(i),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  finalData[i].category,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: getChartColor(i),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text("The state.data value is null"),
            );
          }
        } else {
          print(state);
          return SplashScreen();
        }
      },
    );
  }

  Color getChartColor(int index) {
    List<Color> colors = <Color>[
      Colors.green,
      Colors.red,
      Colors.yellow,
    ];
    if (index >= 0 && index < colors.length) {
      return colors[index];
    }
    return Colors.grey;
  }
}
