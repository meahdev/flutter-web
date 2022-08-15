import 'package:admin_dashboard/src/constant/enum.dart';
import 'package:admin_dashboard/src/views/charts/all_charts/animating_pie_chart.dart';
import 'package:admin_dashboard/src/views/charts/all_charts/charjs_bar_chart.dart';
import 'package:admin_dashboard/src/views/charts/all_charts/chart_type.dart';


getChart(ChartType chartType) {
  double numberOfFeatures = 3;
  const ticks = [7, 14, 21, 28, 35];
  var features = ["AA", "BB", "CC", "DD", "EE", "FF", "GG", "HH"];
  var data = [
    [10.0, 20, 28, 5, 16, 15, 17, 6],
    [14.5, 1, 4, 14, 23, 10, 6, 19]
  ];

  features = features.sublist(0, numberOfFeatures.floor());
  data = data
      .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
      .toList();
  if (chartType == ChartType.lineChart) {
    return const LineChart1();
  } else if (chartType == ChartType.barChart) {
    return const BarChartSample2();
  } else if (chartType == ChartType.areaChart) {
    return const AreaChart();
  } else if (chartType == ChartType.piaChart) {
    return const PieChartSample2();
  } else if (chartType == ChartType.colomnChart) {
    return const ColumnChart();
  } else if (chartType == ChartType.advancedSmileChart) {
    return const AdvancedSmilChart();
  } else if (chartType == ChartType.lineChartWithArea) {
    return const LineChartWithArea();
  } else if (chartType == ChartType.simpleLineChart) {
    return const SimpleLineChart();
  } else if (chartType == ChartType.simplePieChart) {
    return const SimplePieChart();
  }else if (chartType == ChartType.animatingPieChart) {
    return const AnimatingPieChart();
  }else if (chartType == ChartType.lineScatterChart) {
    return const LineScatterChart();
  }else if (chartType == ChartType.overlapBars) {
    return const OverlapBar();
  }else if (chartType == ChartType.chartJsBarChart) {
    return const ChartJsBarChart();
  }else if (chartType == ChartType.radarChart) {
    return const RadarChartSample1();
  }else if (chartType == ChartType.polarChart) {
    return const PolarChart();
  }
  else if (chartType == ChartType.multipleStaticChart) {
    return const MultipleStaticChart();
  }
}
