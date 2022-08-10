import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/enum.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/utils/text_utils.dart';
import 'package:flutterx/flutterx.dart';
import 'charttype.dart';
import 'package:flutter/material.dart';

getChart(ChartType chartType) {
  if (chartType == ChartType.lineChart) {
    return LineChart1();
  } else if (chartType == ChartType.barChart) {
    return const BarChartSample2();
  } else if (chartType == ChartType.areaChart) {
    return const AreaChart();
  } else if (chartType == ChartType.piaChart) {
    return const PieChartSample2();
  }
  else if (chartType == ChartType.colomnChart) {
    return const ColumnChart();
  }
}

getChartData(ChartType chartType, BuildContext context) {
  if(Responsive.isMobile(context)){
    if (chartType == ChartType.lineChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
            children: [
          _richText('Activated', 25610,context),
          FxBox.h12,
          _richText('Pending', 56210,context),
              FxBox.h12,
          _richText('DeActivated', 12185,context),
        ]),
      );
    } else if (chartType == ChartType.barChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 695412,context),
            FxBox.h12,
            _richText('Pending', 163542,context),
            FxBox.h12,
          ],
        ),
      );
    } else if (chartType == ChartType.areaChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 86541,context),
            FxBox.h12,
            _richText('Pending', 2541,context),
            FxBox.h12,
            _richText('DeActivated', 102030,context),
          ],
        ),
      );
    } else if (chartType == ChartType.piaChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 3201,context),
            FxBox.h12,
            _richText('Pending', 85120,context),
            FxBox.h12,
            _richText('DeActivated', 65214,context),
          ],
        ),
      );
    }
    else if (chartType == ChartType.colomnChart) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            _richText('Activated', 86541,context),
            FxBox.h12,
            _richText('Pending', 2541,context),
            FxBox.h12,
            _richText('DeActivated', 102030,context),
          ],
        ),
      );
    }
  } else
    {
      if (chartType == ChartType.lineChart) {
        return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          _richText('Activated', 25610,context),
          _richText('Pending', 56210,context),
          _richText('DeActivated', 12185,context),
        ]);
      } else if (chartType == ChartType.barChart) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [_richText('Activated', 695412,context), _richText('Pending', 163542,context)],
        );
      } else if (chartType == ChartType.areaChart) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _richText('Activated', 86541,context),
            _richText('Pending', 2541,context),
            _richText('DeActivated', 102030,context),
          ],
        );
      } else if (chartType == ChartType.piaChart) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _richText('Activated', 3201,context),
            _richText('Pending', 85120,context),
            _richText('DeActivated', 65214,context),
          ],
        );
      }
      else if (chartType == ChartType.colomnChart) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _richText('Activated', 86541,context),
            _richText('Pending', 2541,context),
            _richText('DeActivated', 102030,context),
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
        TextSpan(text: upperCase( '$count\n'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21,),),
        TextSpan(text: upperCase(type)),
      ],
    ),
  );
}
