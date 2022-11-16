import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ConstText.lightText(
              text: Strings.latestTransaction,
              fontWeight: FontWeight.bold,
            ),
            FxBox.h10,
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 400),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  DataTable(
                    showCheckboxColumn: false,
                    columnSpacing: Responsive.isTablet(context) ? 120 : 90,
                    showBottomBorder: true,
                    dataRowHeight: 70,
                    border: TableBorder(
                      bottom: BorderSide(
                        width: 1,
                        color: isDark
                            ? ColorConst.white.withOpacity(0.25)
                            : Colors.grey.shade200,
                      ),
                      horizontalInside: BorderSide(
                        width: 1,
                        color: isDark
                            ? ColorConst.white.withOpacity(0.25)
                            : Colors.grey.shade50,
                      ),
                    ),
                    columns: [
                      DataColumn(label: _tableHeader('(#) Id')),
                      DataColumn(label: _tableHeader('Name')),
                      DataColumn(label: _tableHeader('Date')),
                      DataColumn(label: _tableHeader('Amount')),
                      DataColumn(label: _tableHeader('Status')),
                      DataColumn(label: _tableHeader('')),
                    ],
                    rows: [
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#1')),
                          DataCell(_tableRowImage('Jane Deo')),
                          DataCell(_tableHeader('15/11/2022')),
                          DataCell(_tableHeader('\$90')),
                          DataCell(_statusBox(ColorConst.success, 'Delivered')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#2')),
                          DataCell(_tableRowImage('Joe Blow')),
                          DataCell(_tableHeader('16/11/2022')),
                          DataCell(_tableHeader('\$127')),
                          DataCell(
                              _statusBox(ColorConst.warningDark, 'Pending')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#3')),
                          DataCell(_tableRowImage('Jhon Wick')),
                          DataCell(_tableHeader('3/11/2022')),
                          DataCell(_tableHeader('\$107')),
                          DataCell(_statusBox(ColorConst.success, 'Delivered')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#4')),
                          DataCell(_tableRowImage('Joe Wick')),
                          DataCell(_tableHeader('18/11/2022')),
                          DataCell(_tableHeader('\$109')),
                          DataCell(_statusBox(ColorConst.error, 'Cancel')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#5')),
                          DataCell(_tableRowImage('Jane Blow')),
                          DataCell(_tableHeader('12/11/2022')),
                          DataCell(_tableHeader('\$120')),
                          DataCell(_statusBox(ColorConst.success, 'Delivered')),
                          DataCell(_editButton()),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tableHeader(String text) {
    return ConstText.lightText(
      text: text,
      fontWeight: FontWeight.w700,
    );
  }

  Widget _tableRowImage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          maxRadius: 15,
          backgroundImage: NetworkImage(Images.profileImage),
        ),
        FxBox.w10,
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _statusBox(
    Color? color,
    String text,
  ) {
    return FxBadge(
      text: text,
      color: color,
      radius: 5,
      textStyle: TextStyle(
        fontSize: MediaQuery.of(context).size.height * 0.011,
        color: ColorConst.white,
      ),
    );
  }

  Widget _editButton() {
    return FxButton(
      minWidth: 18,
      borderRadius: 6,
      color: ColorConst.primary,
      onPressed: () {},
      textColor: ColorConst.white,
      text: Strings.edit,
    );
  }
}
