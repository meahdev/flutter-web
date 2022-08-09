import 'dart:math';
import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/enum.dart';
import 'package:admin_dashboard/src/utils/charts/areachart.dart';
import 'package:admin_dashboard/src/utils/charts/barchart.dart';
import 'package:admin_dashboard/src/utils/charts/piechart/piechart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

getChart(ChartType chartType) {
  if (chartType == ChartType.lineChart) {
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
  } else if (chartType == ChartType.barChart) {
    return const BarChartSample2();
  } else if (chartType == ChartType.areaChart) {
    return const AreaChart();
  } else if (chartType == ChartType.piaChart) {
    return const PieChartSample2();
  }
}

getChartData(ChartType chartType) {
  if (chartType == ChartType.lineChart) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      _richText('Activated', 25610),
      _richText('Pending', 56210),
      _richText('DeActivated', 12185),
    ]);
  } else if (chartType == ChartType.barChart) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [_richText('Activated', 695412), _richText('Pending', 163542)],
    );
  } else if (chartType == ChartType.areaChart) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _richText('Activated', 86541),
        _richText('Pending', 2541),
        _richText('DeActivated', 102030),
      ],
    );
  } else if (chartType == ChartType.piaChart) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _richText('Activated', 3201),
        _richText('Pending', 85120),
        _richText('DeActivated', 65214),
      ],
    );
  }
}

Widget _richText(String type, int count) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      style: const TextStyle(color: Colors.grey),
      children: <TextSpan>[
        TextSpan(text: '$count\n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: ColorConst.black.withOpacity(0.7))),
        TextSpan(text: type, style: const TextStyle(color: ColorConst.grey800)),
      ],
    ),
  );
}
