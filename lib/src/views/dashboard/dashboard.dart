import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/dashboard/activity.dart';
import 'package:admin_dashboard/src/views/dashboard/chat_screen.dart';
import 'package:admin_dashboard/src/views/dashboard/client_review.dart';
import 'package:admin_dashboard/src/views/dashboard/list_item.dart';
import 'package:admin_dashboard/src/views/dashboard/montly_earning.dart';
import 'package:admin_dashboard/src/views/dashboard/sales_analytics.dart';
import 'package:admin_dashboard/src/views/dashboard/sales_report.dart';
import 'package:admin_dashboard/src/views/dashboard/status_box.dart';
import 'package:admin_dashboard/src/views/dashboard/top_producr_sales_box.dart';
import 'package:admin_dashboard/src/views/dashboard/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Listitem(),
            FxBox.h32,
            Responsive.isWeb(context)
                ? Row(
                    children: [
                      const Expanded(
                        flex: 3,
                        child: Monthlyearning(),
                      ),
                      FxBox.w32,
                      const Expanded(
                        child: Salesanalytics(),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const Monthlyearning(),
                      FxBox.h32,
                      const Salesanalytics(),
                    ],
                  ),
            FxBox.h32,
            Responsive.isWeb(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: SalesReport(),
                      ),
                      FxBox.w32,
                      const Expanded(
                        child: Activity(),
                      ),
                      FxBox.w32,
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Expanded(child: StatusBox()),
                                FxBox.w32,
                                const Expanded(child: TopProductSale()),
                              ],
                            ),
                            FxBox.h32,
                            const Clienresponse(),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const SalesReport(),
                      FxBox.h32,
                      const Activity(),
                      FxBox.h32,
                      Responsive.isTablet(context)
                          ? Row(
                              children: [
                                const Expanded(child: StatusBox()),
                                FxBox.w32,
                                const Expanded(child: TopProductSale()),
                              ],
                            )
                          : Column(
                              children: [
                                const StatusBox(),
                                FxBox.h32,
                                const TopProductSale(),
                              ],
                            ),
                      FxBox.h32,
                      const Clienresponse(),
                    ],
                  ),
            FxBox.h32,
            Responsive.isWeb(context)
                ? Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Transaction(),
                      ),
                      FxBox.w32,
                      const Expanded(
                        child: Chatscreen(),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const Transaction(),
                      FxBox.h32,
                      const Chatscreen(),
                    ],
                  ),
          ],
        ),
      ],
    );
  }
}
