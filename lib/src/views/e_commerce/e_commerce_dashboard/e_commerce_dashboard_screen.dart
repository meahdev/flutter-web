import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/dashboard/sales_analytics.dart';
import 'package:admin_dashboard/src/views/dashboard/sales_report.dart';
import 'package:admin_dashboard/src/views/e_commerce/e_commerce_dashboard/dash_list_item.dart';
import 'package:admin_dashboard/src/views/e_commerce/e_commerce_dashboard/global_sale.dart';
import 'package:admin_dashboard/src/views/e_commerce/e_commerce_dashboard/subscription_box.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class EcommerceDashboard extends StatefulWidget {
  const EcommerceDashboard({super.key});

  @override
  State<EcommerceDashboard> createState() => _EcommerceDashboardState();
}

class _EcommerceDashboardState extends State<EcommerceDashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DashListItem(),
        FxBox.h24,
        Responsive.isWeb(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: SalesReport(),
                  ),
                  FxBox.w24,
                  const Expanded(
                    child: SubScriptionBox(),
                  ),
                  FxBox.w24,
                  const Expanded(
                    //flex: 2,
                    child: Salesanalytics(),
                  ),
                ],
              )
            : Column(
                children: [
                  const SalesReport(),
                  FxBox.h24,
                  const Salesanalytics(),
                ],
              ),
        FxBox.h24,
        const GlobalSale(),
      ],
    );
  }
}
