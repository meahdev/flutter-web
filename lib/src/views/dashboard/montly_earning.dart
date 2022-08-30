import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Monthlyearning extends StatefulWidget {
  const Monthlyearning({Key? key}) : super(key: key);

  @override
  State<Monthlyearning> createState() => _MonthlyearningState();
}

class _MonthlyearningState extends State<Monthlyearning> {
  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: (touchedSpots) {
            double value = 0.0;
            for (LineBarSpot lineBarSpot in touchedSpots) {
              value = lineBarSpot.y;
            }
            return [
              LineTooltipItem(
                value.toString(),
                const TextStyle(
                  color: ColorConst.darkFontColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ];
          },
          tooltipBgColor: ColorConst.grey800,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
        drawVerticalLine: true,
      ),
      titlesData: FlTitlesData(
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
            FlSpot(0, 3),
            FlSpot(2, 5.5),
            FlSpot(4, 4),
            FlSpot(6, 5),
            FlSpot(8, 3),
            FlSpot(9.5, 2),
            FlSpot(11, 4),
          ],
          isCurved: true,
          color: ColorConst.chartBorderColor,
          barWidth: 2,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(
            show: true,
            color: ColorConst.chartForgoundColor,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: Responsive.isMobile(context) ? 700 : 400),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstText.lightText(
                text: Strings.monthlyEarning,
                fontWeight: FontWeight.bold,
              ),
              FxBox.h24,
              Responsive.isMobile(context)
                  ? Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: LineChart(mainData()),
                          ),
                          FxBox.h16,
                          Expanded(
                            child: _monthEarning(
                              durationText: 'This month',
                              salesAmount: '\$34,252',
                              descriptionText:
                                  'It will be as simple as in fact it will be occidental',
                            ),
                          ),
                          FxBox.h16,
                          Expanded(
                            child: _monthEarning(
                              durationText: 'Last month',
                              salesAmount: '\$36,253',
                              descriptionText:
                                  'It will be as simple as in fact it will be occidental.',
                            ),
                          ),
                        ],
                      ),
                    )
                  : Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: LineChart(mainData()),
                          ),
                          FxBox.w32,
                          Expanded(
                            child: _monthEarning(
                              durationText: 'This month',
                              salesAmount: '\$34,252',
                              descriptionText:
                                  'It will be as simple as in fact it will be occidental',
                            ),
                          ),
                          FxBox.w32,
                          Expanded(
                            child: _monthEarning(
                              durationText: 'Last month',
                              salesAmount: '\$36,253',
                              descriptionText:
                                  'It will be as simple as in fact it will be occidental.',
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _monthEarning({
    required String durationText,
    required String salesAmount,
    required String descriptionText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstText.lightText(
          text: durationText,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        Responsive.isMobile(context) ? FxBox.h8 : FxBox.h28,
        ConstText.largeText(
          text: salesAmount,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        Responsive.isMobile(context) ? FxBox.h8 : FxBox.h28,
        ConstText.lightText(
          textAlign: TextAlign.center,
          text: descriptionText,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        Responsive.isMobile(context) ? FxBox.h16 : FxBox.h28,
        _circularProgress(),
      ],
    );
  }

  Widget _circularProgress() {
    return FxCircularProgress(
      height: 72,
      percentage: 40,
      showPercentage: false,
      round: false,
      color: ColorConst.success,
      backColor: ColorConst.darkFontColor,
      stroke: 10,
    );
  }
}
