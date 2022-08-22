import 'package:admin_dashboard/src/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AdvancedSmilChart extends StatelessWidget {
 const  AdvancedSmilChart({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    //print(dummyData1);
    return LineChart(
      LineChartData(
        gridData: FlGridData(show: true,verticalInterval: 1,getDrawingHorizontalLine: (_) => FlLine(color: ColorConst.gridChartColor,),getDrawingVerticalLine:(_) => FlLine(color: ColorConst.gridChartColor,)),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: getTitles,
              reservedSize: 42,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 28,
              interval: 1,
              getTitlesWidget: leftTitles,
            ),
          ),
        ),
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
          ], isCurved: true, barWidth: 2, color: ColorConst.chartColorBlue),
          LineChartBarData(spots: const [
            FlSpot(0, 0),
            FlSpot(1, 0.8881858765835509),
            FlSpot(2, 0.13714336946062744),
            FlSpot(3, 2.706569222866368),
            FlSpot(4, 2.3666293026081062),
            FlSpot(5, 2.0479143256070467),
            FlSpot(6, 1.0855914260893909),
            FlSpot(7, 2.216712037984714)
          ], isCurved: true, barWidth: 2, color: ColorConst.chartColorGreen),
          LineChartBarData(spots: const [
            FlSpot(0, 0),
            FlSpot(1, 0.6013413129661813),
            FlSpot(2, 0.8856980928056246),
            FlSpot(3, 1.841570541554197),
            FlSpot(4, 1.5742790861676772),
            FlSpot(5, 3.5461511007919997),
            FlSpot(6, 1.1322847934108373),
            FlSpot(7, 5.3243068400091165)
          ], isCurved: true, barWidth: 2, color: ColorConst.black),
          LineChartBarData(spots: const [
            FlSpot(0, 0),
            FlSpot(1, 0.4387327174115332),
            FlSpot(2, 0.9976448079103646),
            FlSpot(3, 1.950667141363143),
            FlSpot(4, 1.2727444333933056),
            FlSpot(5, 1.858787928173573),
            FlSpot(6, 0.5207777705154775),
            FlSpot(7, 1.9613875628547217)
          ], isCurved: true, barWidth: 2, color:ColorConst.chartColorYellow),
        ],
      ),
    );
  }
}

Widget leftTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff7589a2),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  String text;
  if (value == 0) {
    text = '0';
  } else if (value == 1) {
    text = '2.5';
  } else if (value == 2) {
    text = '5';
  }
  else if (value == 3) {
    text = '7.5';
  }
  else if (value == 4) {
    text = '10';
  } else if (value == 5) {
    text = '12.5';
  }
  else if (value == 6) {
    text = '15';
  }else {
    return Container();
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 0,
    child: Text(text, style: style),
  );
}

Widget getTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff7589a2),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  String text;
  switch (value.toString()) {
    case '0':
      text = '1';
      break;
    case '0.5':
      text = '';
      break;
    case '1':
      text = '2';
      break;
    case '1.5':
      text = '';
      break;
    case '2':
      text = '3';
      break;
    case '2.5':
      text = '';
      break;
    case '3':
      text = '4';
      break;
    case '3.5':
      text = '';
      break;
    case '4':
      text = '5';
      break;
    case '4.5':
      text = '';
      break;
    case '5':
      text = '6';
      break;
    case '5.5':
      text = '';
      break;
    case '6':
      text = '7';
      break;
    case '6.5':
      text = '';
      break;
    case '7':
      text = '8';
      break;
    default:
      text = '9';
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 16.0,
    child: Text(text, style: style),
  );
}





