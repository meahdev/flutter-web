import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/dashboard/activity.dart';
import 'package:admin_dashboard/src/views/dashboard/chat_screen.dart';
import 'package:admin_dashboard/src/views/dashboard/client_review.dart';
import 'package:admin_dashboard/src/views/dashboard/list_item.dart';
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
            FxBox.h20,
            Responsive.isWeb(context)
                ? Row(
                    children: [
                      const Expanded(
                        //flex: 2,
                        child: SalesReport(),
                      ),
                      FxBox.w20,
                      const Expanded(
                        //flex: 3,
                        child: Activity(),
                      ),
                      FxBox.w20,
                      Expanded(
                        // flex: 3,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Expanded(child: StatusBox()),
                                FxBox.w20,
                                const Expanded(child: TopProductSale()),
                              ],
                            ),
                            FxBox.h20,
                            const Clienresponse(),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const SalesReport(),
                      FxBox.h20,
                      const Activity(),
                      FxBox.h20,
                      Responsive.isTablet(context)
                          ? Row(
                              children: [
                                const Expanded(child: StatusBox()),
                                FxBox.w20,
                                const Expanded(child: TopProductSale()),
                              ],
                            )
                          : Column(
                              children: [
                                const StatusBox(),
                                FxBox.h20,
                                const TopProductSale(),
                              ],
                            ),
                      FxBox.h20,
                      const Clienresponse(),
                    ],
                  ),
            FxBox.h20,
            Responsive.isWeb(context)
                ? Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Transaction(),
                      ),
                      FxBox.w20,
                      const Expanded(
                        child: Chatscreen(),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const Transaction(),
                      FxBox.h20,
                      const Chatscreen(),
                    ],
                  ),
          ],
        ),
      ],
    );
  }
}
