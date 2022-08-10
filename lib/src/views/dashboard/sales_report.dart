import 'package:flutter/material.dart';

class SalesReport extends StatefulWidget {
  const SalesReport({Key? key}) : super(key: key);

  @override
  State<SalesReport> createState() => _SalesReportState();
}

class _SalesReportState extends State<SalesReport> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 465),
        child: Container(),
      ),
    );
  }
}
