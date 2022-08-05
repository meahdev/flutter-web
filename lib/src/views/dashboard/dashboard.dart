import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/dashboard/chat_screen.dart';
import 'package:admin_dashboard/src/views/dashboard/list_item.dart';
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
