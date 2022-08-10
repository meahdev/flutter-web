import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimplePieChart extends StatelessWidget {
  const SimplePieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PieChart(
              PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 0,
                  sections: getSectionData(MediaQuery.of(context).size.width / 2)
              )),
        ),
      ],
    );
  }
}
List<PieChartSectionData> getSectionData(double screenWidth) {
  double radius = screenWidth / 4.44;
  return [
    PieChartSectionData(
      value: 20,
      title: '20%',
      radius: radius,
      color: const Color(0xff6d6fb9),
    ),
    PieChartSectionData(
      value: 35,
      title: '35%',
      radius: radius,
      color:  const Color(0xff4d938f),
    ),
    PieChartSectionData(
      value: 15,
      title: '15%',
      radius: radius,
      color: const Color(0xff3b3d40),
    ),
    PieChartSectionData(
      value: 30,
      title: '30%',
      radius: radius,
      color: const Color(0xffeaba67),
    ),
  ];
}