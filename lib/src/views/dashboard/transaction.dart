import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/hive/hive_keys.dart';
import 'package:admin_dashboard/src/utils/hive/hive_utils.dart';
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
      return isDarknessHover ? ColorConst.grey800 : ColorConst.tableHover;
    }
    return Colors.transparent;
  }

  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
                controller: _scrollController,
                shrinkWrap: true,
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
                          DataCell(_tableHeader('#14256')),
                          DataCell(_tableRowImage('Philip Smead')),
                          DataCell(_tableHeader('15/1/2018')),
                          DataCell(_tableHeader('\$94')),
                          DataCell(_statusBox(ColorConst.success, 'Delivered')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14257')),
                          DataCell(_tableRowImage('Brent Shipley')),
                          DataCell(_tableHeader('16/1/2019')),
                          DataCell(_tableHeader('\$112')),
                          DataCell(
                              _statusBox(ColorConst.warningDark, 'Pending')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14258')),
                          DataCell(_tableRowImage('Robert Sitton')),
                          DataCell(_tableHeader('17/1/2019')),
                          DataCell(_tableHeader('\$116')),
                          DataCell(_statusBox(ColorConst.success, 'Delivered')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14259')),
                          DataCell(_tableRowImage('Alberto Jackson')),
                          DataCell(_tableHeader('18/1/2019')),
                          DataCell(_tableHeader('\$109')),
                          DataCell(_statusBox(ColorConst.error, 'Cancel')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {},
                        cells: [
                          DataCell(_tableHeader('#14260')),
                          DataCell(_tableRowImage('David Sanchez')),
                          DataCell(_tableHeader('19/1/2019')),
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
      //color: ColorConst.grey800,
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
              fontSize: 12,
              //color: ColorConst.grey800,
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
