import 'package:admin_dashboard/src/constant/enum.dart';
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
      // children:  [
      //   Row(
      //     children: [
      //       Expanded(child: _card(ChartType.lineChart)),
      //       Expanded(child: _card(ChartType.barChart)),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       Expanded(child: _card(ChartType.areaChart)),
      //       Expanded(child: _card(ChartType.piaChart)),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       Expanded(child: _card(ChartType.colomnChart)),
      //     ],
      //   ),
      // ],
      children: Responsive.isTablet(context) || Responsive.isMobile(context)
          ? [
              _card(ChartType.lineChart,context),
              _card(ChartType.barChart,context),
              _card(ChartType.areaChart,context),
              _card(ChartType.piaChart,context),
              _card(ChartType.colomnChart,context),
            ]
          : [
              Row(
                children: [
                  Expanded(child: _card(ChartType.lineChart,context)),
                  Expanded(child: _card(ChartType.barChart,context)),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _card(ChartType.areaChart,context)),
                  Expanded(child: _card(ChartType.piaChart,context)),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _card(ChartType.colomnChart,context)),
                ],
              ),
            ],
    );
  }
}

Widget _card(ChartType chartType,BuildContext context) {
  return SizedBox(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(upperCase(chartType.name), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              FxBox.h12,
              getChartData(chartType,context),
              FxBox.h12,
              SizedBox(width: double.infinity, height: 400, child: getChart(chartType),),
            ],
          ),
        ),
      ),
    ),
  );
}
