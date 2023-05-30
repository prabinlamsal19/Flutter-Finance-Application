import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/statistics/presentation/bloc/chart_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../data/models/chart_model.dart';

class PieChartScreen extends StatelessWidget {
  void addData(PieChartData newData) {
    data.add(newData);
  }

  final List<PieChartData> data = [
    PieChartData(category: 'Category 1', value: 10),
    PieChartData(category: 'Category 2', value: 10),
    PieChartData(category: 'Category 3', value: 10),
    PieChartData(category: 'Category 4', value: 10),
  ];

  PieChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChartBloc, ChartState>(
      builder: (context, state) {
        if(state is AddChartState){ . 
        //continue from here 




        //here here here.. 
        }
        return Scaffold(
          body: Stack(
            children: [
              Center(
                child: SfCircularChart(
                  series: <CircularSeries>[
                    PieSeries<PieChartData, String>(
                      dataSource: data,
                      xValueMapper: (PieChartData data, _) => data.category,
                      yValueMapper: (PieChartData data, _) => data.value,
                      dataLabelSettings: const DataLabelSettings(
                        isVisible: true,
                        labelPosition: ChartDataLabelPosition.outside,
                      ),
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
                    color: Colors.white,
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
                      for (int i = 0; i < data.length; i++)
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
                              data[i].category,
                              style: const TextStyle(fontSize: 14),
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
      },
    );
  }

  Color getChartColor(int index) {
    List<Color> colors = <Color>[
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.red,
    ];
    if (index >= 0 && index < colors.length) {
      return colors[index];
    }
    return Colors.grey;
  }
}
