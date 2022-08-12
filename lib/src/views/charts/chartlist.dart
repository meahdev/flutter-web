import 'package:admin_dashboard/src/constant/enum.dart';
import 'package:admin_dashboard/src/utils/charts/chartsutils.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class ChartListChart extends StatefulWidget {
  const ChartListChart({Key? key}) : super(key: key);

  @override
  State<ChartListChart> createState() => _ChartListChartState();
}

class _ChartListChartState extends State<ChartListChart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: Responsive.isTablet(context) || Responsive.isMobile(context)
          ? [
              _card(ChartType.lineChart, context, 'Line Chart'),
              FxBox.h20,
              _card(ChartType.barChart, context, 'Bar Chart'),
              FxBox.h20,
              _card(ChartType.areaChart, context, 'Area Chart'),
              FxBox.h20,
              _card(ChartType.piaChart, context, 'Donut Chart'),
              FxBox.h20,
              _card(ChartType.colomnChart, context, 'Column Chart'),
            ]
          : [
              Row(
                children: [
                  Expanded(
                      child: _card(ChartType.advancedSmileChart, context,
                          'Advanced Smil Animations')),
                  FxBox.w20,
                  Expanded(
                      child: _card(ChartType.simpleLineChart, context,
                          'Simple line chart')),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  // Expanded(child: _card(ChartType.piaChart, context, 'Donut Chart')),
                   Expanded(child: _card(ChartType.animatingPieChart, context, 'Animating a Donut with Svg.animate')),
                  FxBox.w20,
                  Expanded(child: _card(ChartType.lineChartWithArea, context, 'Line chart with area')),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  Expanded(child: _card(ChartType.colomnChart, context, 'Column Chart'),),
                  Expanded(child: _card(ChartType.simplePieChart, context, 'Simple Pie Chart'),),
                ],
              ),
            ],
    );
  }
}

Widget _card(ChartType chartType, BuildContext context, String name) {
  return SizedBox(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            FxBox.h12,
            getChartData(chartType, context),
            FxBox.h12,
            SizedBox(
              width: double.infinity,
              height: 400,
              child: getChart(chartType),
            ),
          ],
        ),
      ),
    ),
  );
}

getChartData(ChartType chartType, BuildContext context) {
  if (Responsive.isMobile(context)) {
    if (chartType == ChartType.advancedSmileChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(children: [
          _richText('Activated', 45410, context),
          FxBox.h12,
          _richText('Pending', 4442, context),
          FxBox.h12,
          _richText('DeActivated', 3201, context),
        ]),
      );
    } else if (chartType == ChartType.barChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 695412, context),
            FxBox.h12,
            _richText('Pending', 163542, context),
            FxBox.h12,
          ],
        ),
      );
    } else if (chartType == ChartType.lineChartWithArea) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 4234, context),
            FxBox.h12,
            _richText('Pending', 64521, context),
            FxBox.h12,
            _richText('DeActivated', 95521, context),
          ],
        ),
      );
    }  else if (chartType == ChartType.colomnChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 86541, context),
            FxBox.h12,
            _richText('Pending', 2541, context),
            FxBox.h12,
            _richText('DeActivated', 102030, context),
          ],
        ),
      );
    }
  } else {
    if (chartType == ChartType.advancedSmileChart) {
      return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        _richText('Activated', 45410, context),
        _richText('Pending', 4442, context),
        _richText('DeActivated', 3201, context),
      ]);
    } else if (chartType == ChartType.simpleLineChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 44242, context),
          _richText('Pending', 75221, context),
          _richText('Pending', 65221, context)
        ],
      );
    } else if (chartType == ChartType.lineChartWithArea) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 4234, context),
          _richText('Pending', 64521, context),
          _richText('DeActivated', 95521, context),
        ],
      );
    } else if (chartType == ChartType.piaChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 3201, context),
          _richText('Pending', 85120, context),
          _richText('DeActivated', 65214, context),
        ],
      );
    } else if (chartType == ChartType.colomnChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 86541, context),
          _richText('Pending', 2541, context),
          _richText('DeActivated', 102030, context),
        ],
      );
    } else if (chartType == ChartType.simplePieChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 48484, context),
          _richText('Pending', 48652, context),
          _richText('DeActivated', 85412, context),
        ],
      );
    } else if (chartType == ChartType.animatingPieChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 48484, context),
          _richText('Pending', 48652, context),
          _richText('DeActivated', 85412, context),
        ],
      );
    }
  }
}

Widget _richText(String type, int count, BuildContext context) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      style: DefaultTextStyle.of(context).style,
      children: <TextSpan>[
        TextSpan(
          text: upperCase('$count\n'),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
        TextSpan(text: upperCase(type)),
      ],
    ),
  );
}
