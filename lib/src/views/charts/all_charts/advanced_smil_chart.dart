import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AdvancedSmilChart extends StatelessWidget {
 const  AdvancedSmilChart({Key? key}) : super(key: key);
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
            FlSpot(0, 0),
            FlSpot(1, 0.07203827674494101),
            FlSpot(2, 1.699962728354877),
            FlSpot(3, 0.5569359871120536),
            FlSpot(4, 3.36360317721251),
            FlSpot(5, 0.9243654263320322),
            FlSpot(6, 5.009729989790984),
            FlSpot(7, 2.83296505280733)
          ], isCurved: true, barWidth: 2, color: const Color(0xff6d6fb9)),
          LineChartBarData(spots: const [
            FlSpot(0, 0),
            FlSpot(1, 0.8881858765835509),
            FlSpot(2, 0.13714336946062744),
            FlSpot(3, 2.706569222866368),
            FlSpot(4, 2.3666293026081062),
            FlSpot(5, 2.0479143256070467),
            FlSpot(6, 1.0855914260893909),
            FlSpot(7, 2.216712037984714)
          ], isCurved: true, barWidth: 2, color: const Color(0xff4d938f)),
          LineChartBarData(spots: const [
            FlSpot(0, 0),
            FlSpot(1, 0.6013413129661813),
            FlSpot(2, 0.8856980928056246),
            FlSpot(3, 1.841570541554197),
            FlSpot(4, 1.5742790861676772),
            FlSpot(5, 3.5461511007919997),
            FlSpot(6, 1.1322847934108373),
            FlSpot(7, 5.3243068400091165)
          ], isCurved: true, barWidth: 2, color: const Color(0xff3b3d40)),
          LineChartBarData(spots: const [
            FlSpot(0, 0),
            FlSpot(1, 0.4387327174115332),
            FlSpot(2, 0.9976448079103646),
            FlSpot(3, 1.950667141363143),
            FlSpot(4, 1.2727444333933056),
            FlSpot(5, 1.858787928173573),
            FlSpot(6, 0.5207777705154775),
            FlSpot(7, 1.9613875628547217)
          ], isCurved: true, barWidth: 2, color:const Color(0xffeaba67)),
        ],
      ),
    );
  }
}
