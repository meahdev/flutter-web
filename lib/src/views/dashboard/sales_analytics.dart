import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Salesanalytics extends StatefulWidget {
  const Salesanalytics({Key? key}) : super(key: key);

  @override
  State<Salesanalytics> createState() => _SalesanalyticsState();
}

class _SalesanalyticsState extends State<Salesanalytics> {
  final List<FlSpot> _offlineChart = const [
    FlSpot(0, 4),
    FlSpot(0.5, 1.5),
    FlSpot(1, 3),
    FlSpot(1.5, -2),
    FlSpot(2, 5),
    FlSpot(2.5, -1),
    FlSpot(3, 3),
  ];
  final List<FlSpot> _onlineChart = const [
    FlSpot(0, 4),
    FlSpot(0.5, 1.5),
    FlSpot(1, 3),
    FlSpot(1.5, 1),
    FlSpot(2, 4),
    FlSpot(2.5, 3.5),
    FlSpot(3, 0),
  ];
  final List<FlSpot> _marketingChart = const [
    FlSpot(0, 4),
    FlSpot(0.5, 1.5),
    FlSpot(1, 3),
    FlSpot(1.5, 1),
    FlSpot(2, 4),
    FlSpot(2.5, 3.5),
    FlSpot(3, 0),
  ];
  LineChartData mainData(List<FlSpot> list) {
    return LineChartData(
      lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: ColorConst.grey800,
      )),
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
        drawVerticalLine: false,
        drawHorizontalLine: false,
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
            showTitles: false,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      minX: 0,
      maxX: 4,
      minY: 0,
      maxY: 4,
      lineBarsData: [
        LineChartBarData(
          dotData: FlDotData(show: false),
          spots: list,
          color: ColorConst.success,
          barWidth: 2,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(
            show: true,
            color: ColorConst.success.withOpacity(0.6),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 400),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConstText.lightText(
                text: Strings.salesAnalytics,
                fontWeight: FontWeight.bold,
              ),
              _statusAndvalueWithChart(
                status: 'Online',
                value: '1,542',
                list: _onlineChart,
              ),
              _statusAndvalueWithChart(
                status: 'Offline',
                value: '6,451',
                list: _offlineChart,
              ),
              _statusAndvalueWithChart(
                status: 'Marketing',
                value: '84,574',
                list: _marketingChart,
              ),
              FxBox.shrink,
            ],
          ),
        ),
      ),
    );
  }

  Widget _statusAndvalueWithChart({
    required String status,
    required String value,
    required List<FlSpot> list,
  }) {
    return Responsive.isMobile(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _statusAndvalue(
                status: status,
                value: value,
              ),
              Responsive.isMobile(context) ? FxBox.h2 : FxBox.shrink,
              SizedBox(
                height: 50,
                child: LineChart(
                  mainData(list),
                ),
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                  flex: 1,
                  child: _statusAndvalue(
                    status: status,
                    value: value,
                  )),
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 50,
                  child: LineChart(
                    mainData(list),
                  ),
                ),
              )
            ],
          );
  }

  Widget _statusAndvalue({
    required String status,
    required String value,
  }) {
    return Column(
      children: [
        ConstText.lightText(
          text: status,
          fontWeight: FontWeight.w500,
        ),
        Responsive.isMobile(context) ? FxBox.h2 : FxBox.h20,
        ConstText.lightText(
          text: value,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}