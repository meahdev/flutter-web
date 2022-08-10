import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SimpleLineChart extends StatelessWidget {
  const  SimpleLineChart({Key? key}) : super(key: key);
  //
  // final List<FlSpot> dummyData1 = List.generate(8, (index) {
  //   return FlSpot(index.toDouble(), index * Random().nextDouble());
  // });
  @override
  Widget build(BuildContext context) {
    //print(dummyData1);
    return LineChart(
      LineChartData(
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ], isCurved: false, barWidth: 2, color: const Color(0xff6d6fb9)),
        ],
      ),
    );
  }
}
