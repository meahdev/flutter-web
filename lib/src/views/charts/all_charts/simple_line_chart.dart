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
          LineChartBarData(
            spots: const [
            FlSpot(0, 5),
            FlSpot(4, 4),
            FlSpot(4.9, 5),
            FlSpot(3, 3.1),
            FlSpot(6, 4),
            ],
            isCurved: true,
            color: const Color(0xff6d6fb9),
            barWidth: 2,
            isStrokeCapRound: false,
            dotData: FlDotData(
              show: true,
            ),
          ),
          LineChartBarData(
            spots: const [
              FlSpot(0, 2),
              FlSpot(4, 4),
              FlSpot(2.5, 5),
              FlSpot(4, 3.1),
              FlSpot(7, 4),
            ],
            isCurved: true,
            color: const Color(0xff37a499),
            barWidth: 2,
            isStrokeCapRound: false,
            dotData: FlDotData(
              show: true,
            ),
          ),
          LineChartBarData(
            spots: const [
              FlSpot(0, 0),
              FlSpot(4, 4),
              FlSpot(3.5, 5),
              FlSpot(5, 3.1),
              FlSpot(8, 4),
            ],
            isCurved: true,
            color: const Color(0xff6fab427),
            barWidth: 2,
            isStrokeCapRound: false,
            dotData: FlDotData(
              show: true,
            ),
          ),
        ],
      ),
    );
  }
}
