import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class SalesReport extends StatefulWidget {
  const SalesReport({Key? key}) : super(key: key);

  @override
  State<SalesReport> createState() => _SalesReportState();
}

class _SalesReportState extends State<SalesReport> {
  final List<Map<String, dynamic>> _chartList = [
    {
      'bedgeTitle': 'Desk',
      'badgeColor': ColorConst.chartColorBlue,
      'title': Strings.desktop,
      'percentage': '54.5%',
    },
    {
      'bedgeTitle': 'Mob',
      'badgeColor': ColorConst.chartColorGreen,
      'title': Strings.mobile,
      'percentage': '28.0%',
    },
    {
      'bedgeTitle': 'Tab',
      'badgeColor': ColorConst.chartColorYellow,
      'title': Strings.tablets,
      'percentage': '17.5%',
    },
  ];
  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      double radius = 16.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: ColorConst.chartColorBlue,
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: ColorConst.chartColorGreen,
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: ColorConst.chartColorYellow,
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 465),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ConstText.lightText(
                text: Strings.salesReport,
                fontWeight: FontWeight.bold,
              ),
              FxBox.h24,
              _dateAndPrice(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: _chart(),
              ),
              FxBox.h24,
              ListView.builder(
                shrinkWrap: true,
                itemCount: _chartList.length,
                itemBuilder: (context, index) {
                  return _chartValue(
                    bedgeTitle: _chartList[index]['bedgeTitle'],
                    badgeColor: _chartList[index]['badgeColor'],
                    title: _chartList[index]['title'],
                    percentage: _chartList[index]['percentage'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dateAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Jan 01 - Jan 31',
          softWrap: true,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '\$${4230}',
          softWrap: true,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _chartValue({
    required String bedgeTitle,
    required Color badgeColor,
    required String title,
    required String percentage,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FxBadge(
                text: bedgeTitle,
                radius: 4,
                color: badgeColor,
              ),
              Text(
                title,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                percentage,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: ColorConst.grey800.withOpacity(0.2),
        ),
      ],
    );
  }

  Widget _chart() {
    return PieChart(
      PieChartData(
        centerSpaceRadius: 80,
        sections: showingSections(),
      ),
    );
  }
}
