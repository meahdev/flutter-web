import 'package:admin_dashboard/src/constant/enum.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/charts/chartsutils.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class MorrisChart extends StatefulWidget {
  const MorrisChart({Key? key}) : super(key: key);

  @override
  State<MorrisChart> createState() => _MorrisChartState();
}

class _MorrisChartState extends State<MorrisChart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: Responsive.isTablet(context) || Responsive.isMobile(context)
          ? [
              _card(ChartType.lineChart, context, Strings.lineChart),
              FxBox.h20,
              _card(ChartType.barChart, context, Strings.barChart),
              FxBox.h20,
              _card(ChartType.areaChart, context, Strings.areaChart),
              FxBox.h20,
              _card(ChartType.piaChart, context, Strings.donutChart),
              FxBox.h20,
              _card(ChartType.colomnChart, context, Strings.columnChart),
            ]
          : [
              Row(
                children: [
                  Expanded(
                    child: _card(ChartType.lineChart, context, Strings.lineChart),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _card(ChartType.barChart, context, Strings.barChart),
                  ),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  Expanded(
                    child: _card(ChartType.areaChart, context, Strings.areaChart),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _card(ChartType.piaChart, context, Strings.donutChart),
                  ),
                ],
              ),
              FxBox.h20,
              _card(ChartType.colomnChart, context, Strings.columnChart),
            ],
    );
  }
}

Widget _card(ChartType chartType, BuildContext context, String name) {
  return SizedBox(
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
    if (chartType == ChartType.lineChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(children: [
          _richText(Strings.activated, 25610, context),
          FxBox.h12,
          _richText(Strings.pending, 56210, context),
          FxBox.h12,
          _richText(Strings.deactivated, 12185, context),
        ]),
      );
    } else if (chartType == ChartType.barChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 695412, context),
            FxBox.h12,
            _richText(Strings.pending, 163542, context),
            FxBox.h12,
          ],
        ),
      );
    } else if (chartType == ChartType.areaChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 86541, context),
            FxBox.h12,
            _richText(Strings.pending, 2541, context),
            FxBox.h12,
            _richText(Strings.deactivated, 102030, context),
          ],
        ),
      );
    } else if (chartType == ChartType.piaChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 3201, context),
            FxBox.h12,
            _richText(Strings.pending, 85120, context),
            FxBox.h12,
            _richText(Strings.deactivated, 65214, context),
          ],
        ),
      );
    } else if (chartType == ChartType.colomnChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 86541, context),
            FxBox.h12,
            _richText(Strings.pending, 2541, context),
            FxBox.h12,
            _richText(Strings.deactivated, 102030, context),
          ],
        ),
      );
    }
  } else {
    if (chartType == ChartType.lineChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 25610, context),
          _richText(Strings.pending, 56210, context),
          _richText(Strings.deactivated, 12185, context),
        ],
      );
    } else if (chartType == ChartType.barChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 695412, context),
          _richText(Strings.pending, 163542, context),
        ],
      );
    } else if (chartType == ChartType.areaChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 86541, context),
          _richText(Strings.pending, 2541, context),
          _richText(Strings.deactivated, 102030, context),
        ],
      );
    } else if (chartType == ChartType.piaChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 3201, context),
          _richText(Strings.pending, 85120, context),
          _richText(Strings.deactivated, 65214, context),
        ],
      );
    } else if (chartType == ChartType.colomnChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 86541, context),
          _richText(Strings.pending, 2541, context),
          _richText(Strings.deactivated, 102030, context),
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
            fontSize: 22,
          ),
        ),
        TextSpan(text: upperCase(type),style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),),
      ],
    ),
  );
}
