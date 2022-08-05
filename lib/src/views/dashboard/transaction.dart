import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';

import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  Color _getDataRowColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    if (states.any(interactiveStates.contains)) {
      return ColorConst.tableHover;
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      child: Container(
        color: ColorConst.white,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ConstText.lightText(
              text: Strings.latestTransaction,
              fontWeight: FontWeight.bold,
              color: ColorConst.grey800,
            ),
            FxBox.h10,
            SizedBox(
              height: Responsive.isMobile(context)
                  ? MediaQuery.of(context).size.height * 0.48
                  : MediaQuery.of(context).size.height * 0.42,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DataTable(
                    showCheckboxColumn: false,
                    dataRowColor:
                        MaterialStateProperty.resolveWith((_getDataRowColor)),
                    columnSpacing: Responsive.isTablet(context) ? 120 : 90,
                    showBottomBorder: true,
                    dataRowHeight: 70,
                    border: TableBorder(
                      bottom: BorderSide(width: 1, color: Colors.grey.shade200),
                      horizontalInside:
                          BorderSide(width: 1, color: Colors.grey.shade50),
                    ),
                    columns: [
                      DataColumn(
                        label: _tableHeader('(#) Id'),
                      ),
                      DataColumn(label: _tableHeader('Name')),
                      DataColumn(
                        label: _tableHeader('Date'),
                      ),
                      DataColumn(label: _tableHeader('Amount')),
                      DataColumn(label: _tableHeader('Status')),
                      DataColumn(label: _tableHeader('')),
                    ],
                    rows: [
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14256')),
                          DataCell(
                            _tableRowImage('Philip Smead'),
                          ),
                          DataCell(
                            _tableHeader('15/1/2018'),
                          ),
                          DataCell(
                            _tableHeader('\$94'),
                          ),
                          DataCell(
                            _statusBox(ColorConst.success, 'Delivered'),
                          ),
                          DataCell(
                            _editButton(),
                          ),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14257')),
                          DataCell(
                            _tableRowImage('Brent Shipley'),
                          ),
                          DataCell(
                            _tableHeader('16/1/2019'),
                          ),
                          DataCell(
                            _tableHeader('\$112'),
                          ),
                          DataCell(
                            _statusBox(ColorConst.warningDark, 'Pending'),
                          ),
                          DataCell(
                            _editButton(),
                          ),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14258')),
                          DataCell(
                            _tableRowImage('Robert Sitton'),
                          ),
                          DataCell(
                            _tableHeader('17/1/2019'),
                          ),
                          DataCell(
                            _tableHeader('\$116'),
                          ),
                          DataCell(
                            _statusBox(ColorConst.success, 'Delivered'),
                          ),
                          DataCell(
                            _editButton(),
                          ),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14259')),
                          DataCell(
                            _tableRowImage('Alberto Jackson'),
                          ),
                          DataCell(
                            _tableHeader('18/1/2019'),
                          ),
                          DataCell(
                            _tableHeader('\$109'),
                          ),
                          DataCell(
                            _statusBox(ColorConst.error, 'Cancel'),
                          ),
                          DataCell(
                            _editButton(),
                          ),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14260')),
                          DataCell(
                            _tableRowImage('David Sanchez'),
                          ),
                          DataCell(
                            _tableHeader('19/1/2019'),
                          ),
                          DataCell(
                            _tableHeader('\$120'),
                          ),
                          DataCell(
                            _statusBox(ColorConst.success, 'Delivered'),
                          ),
                          DataCell(
                            _editButton(),
                          ),
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
      color: ColorConst.grey800,
      fontSize: MediaQuery.of(context).size.height * 0.015,
    );
  }

  Widget _tableRowImage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          maxRadius: MediaQuery.of(context).size.height * 0.02,
          backgroundImage: const NetworkImage(Images.profileImage),
        ),
        FxBox.w10,
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.012,
              color: ColorConst.grey800,
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
          color: ColorConst.white),
    );
  }

  Widget _editButton() {
    return FxButton(
      minWidth: 18,
      onPressed: () {},
      child: ConstText.lightText(
          text: Strings.edit, color: ColorConst.white, fontSize: 12),
    );
  }
}
