import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChart1 extends StatelessWidget {


  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

// This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

// This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

   LineChart1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        borderData: FlBorderData(show: false),
        lineBarsData: [
          // The red line
          LineChartBarData(
              spots: dummyData1,
              isCurved: true,
              barWidth: 2,
              color: Colors.blue),
          // The orange line
          LineChartBarData(
              spots: dummyData2,
              isCurved: true,
              barWidth: 2,
              color: Colors.grey),
          // The blue line

          LineChartBarData(
              spots: dummyData3,
              isCurved: true,
              barWidth: 2,
              color: Colors.green)
        ],
      ),
      swapAnimationDuration: const Duration(milliseconds: 150),
      // Optional
      swapAnimationCurve: Curves.linear, // Optional
    );
  }
}
