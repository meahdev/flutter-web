import 'package:admin_dashboard/src/constant/enum.dart';
import 'package:admin_dashboard/src/utils/charts/chartsutils.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class FloatChart extends StatefulWidget {
  const FloatChart({Key? key}) : super(key: key);

  @override
  State<FloatChart> createState() => _FloatChartState();
}

class _FloatChartState extends State<FloatChart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: Responsive.isTablet(context) || Responsive.isMobile(context)
          ? [
        _card(ChartType.chartJsBarChart, context, 'Bar Chart'),
        FxBox.h20,
        _card(ChartType.polarChart, context, 'Polar Chart'),
        FxBox.h20,
        _card(ChartType.radarChart, context, 'Radar Chart'),
        FxBox.h20,
      ] : [
        Row(
          children: [Expanded(child: _card(ChartType.multipleStaticChart, context, 'Bar Chart')),
          ],
        ),
        FxBox.h20,
        Row(
          children: [Expanded(child: _card(ChartType.polarChart, context, 'Polar Chart')),
            FxBox.w20,
            Expanded(child: _card(ChartType.radarChart, context, 'Radar Chart')),
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
    if (chartType == ChartType.chartJsBarChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(children: [
          _richText('Activated', 2541, context),
          FxBox.h12,
          _richText('Pending', 84845, context),
          FxBox.h12,
          _richText('DeActivated', 12001, context),
        ]),
      );
    } else if (chartType == ChartType.radarChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 694, context),
            FxBox.h12,
            _richText('Pending', 55210, context),
            FxBox.h12,
            _richText('DeActivated', 489498, context),
          ],
        ),
      );
    } else if (chartType == ChartType.polarChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 4852, context),
            FxBox.h12,
            _richText('Pending', 3652, context),
            FxBox.h12,
            _richText('DeActivated', 85412, context),
          ],
        ),
      );
    }
  } else {
    if (chartType == ChartType.multipleStaticChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 362411, context),
          _richText('Pending', 8489, context),
          _richText('DeActivated', 985412, context),
        ],
      );
    } else if (chartType == ChartType.radarChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 694, context),
          _richText('Pending', 55210, context),
          _richText('DeActivated', 489498, context),
        ],
      );
    } else if (chartType == ChartType.polarChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText('Activated', 4852, context),
          _richText('Pending', 3652, context),
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
