import 'package:admin_dashboard/src/constant/enum.dart';
import 'package:admin_dashboard/src/views/charts/all_charts/animating_pie_chart.dart';
import 'package:admin_dashboard/src/views/charts/all_charts/chart_type.dart';


getChart(ChartType chartType) {
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
  }
}
