import 'package:admin_dashboard/src/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChart1 extends StatelessWidget {
  const LineChart1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: ColorConst.grey800,
            getTooltipItems: (touchedSpots) {
              List<double> value = [];
              for (LineBarSpot lineBarSpot in touchedSpots) {
                value.add(lineBarSpot.y);
              }
              return value
                  .map(
                    (e) => LineTooltipItem(
                      e.toString(),
                      const TextStyle(
                        color: ColorConst.darkFontColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                  .toList();
            },
          ),
        ),
        gridData: FlGridData(
          show: false,
          verticalInterval: 1,
          getDrawingHorizontalLine: (_) => FlLine(
            color: ColorConst.gridChartColor,
          ),
          getDrawingVerticalLine: (_) => FlLine(
            color: ColorConst.gridChartColor,
          ),
        ),
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
              FlSpot(0, 0),
              FlSpot(1, 0.07),
              FlSpot(2, 1.69),
              FlSpot(3, 0.55),
              FlSpot(4, 3.36),
              FlSpot(5, 0.92),
            ],
            isCurved: true,
            barWidth: 2,
            color: ColorConst.chartColorGreen,
          ),
          LineChartBarData(
            spots: const [
              FlSpot(0, 0),
              FlSpot(1, 0.88),
              FlSpot(2, 0.13),
              FlSpot(3, 2.70),
              FlSpot(4, 2.36),
              FlSpot(5, 2.04),
            ],
            isCurved: true,
            barWidth: 2,
            color: ColorConst.blueChartColor,
          ),
          LineChartBarData(
            spots: const [
              FlSpot(0, 0),
              FlSpot(1, 0.60),
              FlSpot(2, 0.88),
              FlSpot(3, 1.84),
              FlSpot(4, 1.57),
              FlSpot(5, 3.54),
            ],
            isCurved: true,
            barWidth: 2,
            color: ColorConst.greyChartColor,
          )
        ],
      ),
    );
  }
}

Widget leftTitles(double value, TitleMeta meta) {
  TextStyle style;
  style = TextStyle(
    color: ColorConst.gridTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  String text;
  if (value == 0) {
    text = '0';
  } else if (value == 1) {
    text = '75';
  } else if (value == 2) {
    text = '150';
  } else if (value == 3) {
    text = '225';
  } else if (value == 4) {
    text = '300';
  } else if (value == 5) {
    text = '375';
  } else {
    return Container();
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 0,
    child: Text(text, style: style),
  );
}

Widget getTitles(double value, TitleMeta meta) {
  TextStyle style;
  style = TextStyle(
    color: ColorConst.gridTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  String text;
  switch (value.toString()) {
    case '0':
      text = '2016';
      break;
    case '0.5':
      text = '';
      break;
    case '1':
      text = '2017';
      break;
    case '1.5':
      text = '';
      break;
    case '2':
      text = '2018';
      break;
    case '2.5':
      text = '';
      break;
    case '3':
      text = '2019';
      break;
    case '3.5':
      text = '';
      break;
    case '4':
      text = '2020';
      break;
    case '4.5':
      text = '';
      break;
    case '5':
      text = '2021';
      break;
    default:
      text = '2022';
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 16.0,
    child: Text(text, style: style),
  );
}
