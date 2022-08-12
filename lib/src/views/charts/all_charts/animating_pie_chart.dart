import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnimatingPieChart extends StatefulWidget {
  const AnimatingPieChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: PieChart(
            PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 80,
                sections: showingSections()),
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(7, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff616fd4),
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xff37a499),
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xfff8b427),
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff333a3f),
            radius: radius,
          );
        case 4:
          return PieChartSectionData(
            color: const Color(0xff38a5f3),
            radius: radius,
          );
        case 5:
          return PieChartSectionData(
            color: const Color(0xffeb4660),
            radius: radius,
          );
        case 6:
          return PieChartSectionData(
            color: const Color(0xfff7f9fa),
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }
}
