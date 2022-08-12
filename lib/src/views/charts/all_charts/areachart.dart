import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AreaChart extends StatefulWidget {
  const AreaChart({Key? key}) : super(key: key);

  @override
   State<AreaChart> createState() => _AreaChartState();
}

class _AreaChartState extends State<AreaChart> {


  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      mainData(),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      borderData: FlBorderData(border: const Border(bottom: BorderSide.none)),
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
      ),
      titlesData: FlTitlesData(
        show: false,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
          ),
        ),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 0),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          color: Colors.transparent,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            color: const Color(0xff81d7d0).withOpacity(0.5)
          ),
        ),
        LineChartBarData(
          spots: const [
            FlSpot(0, 0),
            FlSpot(1, 2),
            FlSpot(3, 2),
            FlSpot(5, 1.1),
            FlSpot(6, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          color: Colors.transparent,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: true,
              color: const Color(0xff5cb6c4).withOpacity(0.5),
          ),
        ),
        LineChartBarData(
          spots: const [
            FlSpot(0, 2),
            FlSpot(2, 4),
            FlSpot(3, 2),
            FlSpot(5, 1.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          color: Colors.transparent,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: true,
              color: const Color(0xffaab1e6).withOpacity(0.5)
          ),
        ),
      ],
    );
  }
}
