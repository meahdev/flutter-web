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
        const Listitem(),
        FxBox.h16,
        Responsive.isWeb(context)
            ? Row(
                children: [
                  const Expanded(
                    child: SalesReport(),
                  ),
                  const Expanded(
                    child: Activity(),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(
                              child: StatusBox(),
                            ),
                            Expanded(
                              child: TopProductSale(),
                            ),
                          ],
                        ),
                        const Clienresponse(),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  const SalesReport(),
                  const Activity(),
                  FxBox.h16,
                  Responsive.isTablet(context)
                      ? Row(
                          children: const [
                            Expanded(child: StatusBox()),
                            Expanded(child: TopProductSale()),
                          ],
                        )
                      : Column(
                          children: [
                            const StatusBox(),
                            FxBox.h16,
                            const TopProductSale(),
                          ],
                        ),
                  FxBox.h16,
                  const Clienresponse(),
                ],
              ),
        FxBox.h16,
        Responsive.isWeb(context)
            ? Row(
                children: const [
                  Expanded(
                    flex: 2,
                    child: Transaction(),
                  ),
                  Expanded(
                    child: Chatscreen(),
                  ),
                ],
              )
            : Column(
                children: [
                  const Transaction(),
                  FxBox.h16,
                  const Chatscreen(),
                ],
              ),
      ],
    );
  }
}
