import 'package:admin_dashboard/src/constant/enum.dart';
import 'package:admin_dashboard/src/constant/string.dart';
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
              _card(ChartType.animatingPieChart, context, Strings.animatingPieChart),
              FxBox.h20,
              _card(ChartType.simplePieChart, context, Strings.simplePieChart),
              FxBox.h20,
              _card(ChartType.advancedSmileChart, context, Strings.advanceSmileAnimationChart),
              FxBox.h20,
              _card(ChartType.simpleLineChart, context, Strings.simpleLineChart),
              FxBox.h20,
              _card(
                  ChartType.lineScatterChart, context, Strings.lineScatterChart),
              FxBox.h20,
              _card(
                  ChartType.lineChartWithArea, context, Strings.lineChartWithArea),
              FxBox.h20,
              _card(
                  ChartType.overlapBars, context, Strings.overlappingChart),
            ]
          : [
              Row(
                children: [
                  Expanded(
                    child: _card(ChartType.animatingPieChart, context,
                        Strings.animatingPieChart),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _card(
                        ChartType.simplePieChart, context, Strings.simplePieChart),
                  ),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  Expanded(child: _card(ChartType.advancedSmileChart, context, Strings.advanceSmileAnimationChart),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _card(ChartType.simpleLineChart, context,
                        Strings.simpleLineChart),
                  ),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  Expanded(
                    child: _card(ChartType.lineScatterChart, context,
                        Strings.lineScatterChart),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _card(ChartType.lineChartWithArea, context,
                        Strings.lineChartWithArea),
                  ),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  Expanded(
                    child: _card(ChartType.overlapBars, context,
                        Strings.overlappingChart),
                  ),
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
    if (chartType == ChartType.advancedSmileChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(children: [
          _richText(Strings.activated, 45410, context),
          FxBox.h12,
          _richText(Strings.pending, 4442, context),
          FxBox.h12,
          _richText(Strings.deactivated, 3201, context),
        ]),
      );
    } else if (chartType == ChartType.lineChartWithArea) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 4234, context),
            FxBox.h12,
            _richText(Strings.pending, 64521, context),
            FxBox.h12,
            _richText(Strings.deactivated, 95521, context),
          ],
        ),
      );
    } else if (chartType == ChartType.lineScatterChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 5677, context),
            FxBox.h12,
            _richText(Strings.pending, 2541, context),
            FxBox.h12,
            _richText(Strings.deactivated, 102030, context),
          ],
        ),
      );
    } else if (chartType == ChartType.simpleLineChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 44242, context),
            _richText(Strings.pending, 75221, context),
            _richText(Strings.pending, 65221, context)
          ],
        ),
      );
    } else if (chartType == ChartType.overlapBars) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 86541, context),
            _richText(Strings.pending, 2541, context),
            _richText(Strings.deactivated, 102030, context),
          ],
        ),
      );
    } else if (chartType == ChartType.simplePieChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 48484, context),
            _richText(Strings.pending, 48652, context),
            _richText(Strings.deactivated, 85412, context),
          ],
        ),
      );
    } else if (chartType == ChartType.animatingPieChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText(Strings.activated, 748949, context),
            _richText(Strings.pending, 5181, context),
            _richText(Strings.deactivated, 101025, context),
          ],
        ),
      );
    }
  } else {
    if (chartType == ChartType.advancedSmileChart) {
      return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        _richText(Strings.activated, 45410, context),
        _richText(Strings.pending, 4442, context),
        _richText(Strings.deactivated, 3201, context),
      ]);
    } else if (chartType == ChartType.simpleLineChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 44242, context),
          _richText(Strings.pending, 75221, context),
          _richText(Strings.pending, 65221, context)
        ],
      );
    } else if (chartType == ChartType.lineChartWithArea) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 4234, context),
          _richText(Strings.pending, 64521, context),
          _richText(Strings.deactivated, 95521, context),
        ],
      );
    } else if (chartType == ChartType.simplePieChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 48484, context),
          _richText(Strings.pending, 48652, context),
          _richText(Strings.deactivated, 85412, context),
        ],
      );
    } else if (chartType == ChartType.animatingPieChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 748949, context),
          _richText(Strings.pending, 5181, context),
          _richText(Strings.deactivated, 101025, context),
        ],
      );
    } else if (chartType == ChartType.lineScatterChart) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _richText(Strings.activated, 5677, context),
          _richText(Strings.pending, 5542, context),
          _richText(Strings.deactivated, 12422, context),
        ],
      );
    } else if (chartType == ChartType.overlapBars) {
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
            fontSize: 21,
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
