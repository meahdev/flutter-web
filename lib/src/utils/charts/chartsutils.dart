import 'package:admin_dashboard/src/constant/enum.dart';
import '../../views/charts/allcharts/charttype.dart';
import 'package:admin_dashboard/src/views/charts/allcharts/charttype.dart';

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


