import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SimpleLineChart extends StatelessWidget {
  const SimpleLineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(
            show: true,
            verticalInterval: 2,
            getDrawingHorizontalLine: (_) => FlLine(
                  color: Colors.grey.withOpacity(0.1),
                ),
            getDrawingVerticalLine: (_) => FlLine(
                  color: Colors.grey.withOpacity(0.1),
                )),
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
          LineChartBarData(
            spots: const [
              FlSpot(0, 5),
              FlSpot(2.6, 4),
              FlSpot(4.9, 5),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 4),
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
              FlSpot(0, 1),
              FlSpot(2.6, 2),
              FlSpot(4.9, 2),
              FlSpot(8, 4),
              FlSpot(9.5, 2),
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
              FlSpot(1.6, 1),
              FlSpot(3.9, 1),
              FlSpot(8, 3),
              FlSpot(9.5, 1),
            ],
            isCurved: true,
            color: const Color(0xff6fab42),
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
  } else if (value == 3) {
    text = '7.5';
  } else if (value == 4) {
    text = '10';
  } else if (value == 5) {
    text = '12.5';
  } else if (value == 6) {
    text = '15';
  } else {
    return Container();
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 5,
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
      text = 'Monday';
      break;
    case '0.5':
      text = '';
      break;
    case '1':
      text = '';
      break;
    case '1.5':
      text = '';
      break;
    case '2':
      text = 'Tuesday';
      break;
    case '2.5':
      text = '';
      break;
    case '3':
      text = '';
      break;
    case '3.5':
      text = '';
      break;
    case '4':
      text = 'Wednesday';
      break;
    case '4.5':
      text = '';
      break;
    case '5':
      text = '';
      break;
    case '5.5':
      text = '';
      break;
    case '6':
      text = 'Thursday';
      break;
    case '6.5':
      text = '';
      break;
    case '7':
      text = '';
      break;
    case '8':
      text = 'Friday';
      break;
    case '9':
      text = '';
      break;
    case '10':
      text = 'Saturday';
      break;
    case '11':
      text = '';
      break;
    case '12':
      text = '';
      break;
    default:
      text = '';
      break;
  }
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: SideTitleWidget(
      axisSide: meta.axisSide,
      space: 12.0,
      child: Text(text, style: style),
    ),
  );
}
