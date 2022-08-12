import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineScatterChart extends StatefulWidget {
  const LineScatterChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LineScatterChartState();
}

class _LineScatterChartState extends State {
  final maxX = 50.0;
  final maxY = 50.0;
  final radius = 4.0;

  Color blueColor = const Color(0xFF616fd4);
  Color yellowColor = const Color(0xFFf9b426);

  bool showFlutter = true;

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        scatterSpots: randomData(),
        minX: 0,
        maxX: maxX,
        minY: 0,
        maxY: maxY,
        borderData: FlBorderData(
          show: false,
        ),
        gridData: FlGridData(
          show: true,
        ),
        titlesData: FlTitlesData(
          show: true,
        ),
        scatterTouchData: ScatterTouchData(
          enabled: false,
        ),
      ),
      swapAnimationDuration: const Duration(milliseconds: 600),
      swapAnimationCurve: Curves.fastOutSlowIn,
    );
  }



  List<ScatterSpot> randomData() {
    const blueColorCount = 21;
    const yellowColorCount = 57;
    return List.generate(blueColorCount + yellowColorCount, (i) {
      Color color;
      if (i < blueColorCount) {
        color = blueColor;
      } else {
        color = yellowColor;
      }

      return ScatterSpot(
        (Random().nextDouble() * (maxX - 8)) + 4,
        (Random().nextDouble() * (maxY - 8)) + 4,
        color: color,
        radius: (Random().nextDouble() * 8) + 4,
      );
    });
  }
}