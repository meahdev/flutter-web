import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/datatable.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class GlobalSale extends StatefulWidget {
  const GlobalSale({Key? key}) : super(key: key);

  @override
  State<GlobalSale> createState() => _GlobalSaleState();
}

class _GlobalSaleState extends State<GlobalSale> {
  final List<Map<String, dynamic>> _venderList = [
    {
      'id': 1,
      'r_condition': 'Wrong Product',
      'date': '12 Jan 2022',
    },
    {
      'id': 2,
      'r_condition': 'Defective Product',
      'date': '2 Feb 2022',
    },
    {
      'id': 3,
      'r_condition': 'Size Issue',
      'date': '28 Feb 2022',
    },
    {
      'id': 4,
      'r_condition': 'Physical Damage Product',
      'date': '03 Nov 2022',
    },
    {
      'id': 5,
      'r_condition': 'Not Define',
      'date': '30 Oct 2022',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
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
                  text: Strings.globalSaleText.toUpperCase(),
                  fontWeight: FontWeight.bold,
                ),
                FxBox.h12,
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: (56.0 * 10) + 72.0),
                  child: DataTable3(
                      showCheckboxColumn: false,
                      showBottomBorder: true,
                      columnSpacing: 20.0,
                      minWidth: 728.0,
                      dataRowHeight: Responsive.isMobile(context)
                          ? 100
                          : Responsive.isTablet(context)
                              ? 95
                              : islg(context)
                                  ? 90
                                  : 56.0,
                      headingRowHeight: 64.0,
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
                        DataColumn2(
                          label: _tableHeader('ID'),
                          size: ColumnSize.S,
                        ),
                        DataColumn2(
                          label: _tableHeader('Return Condition'),
                          size: ColumnSize.L,
                        ),
                        DataColumn2(
                          label: _tableHeader('Date'),
                          size: ColumnSize.M,
                        ),
                      ],
                      rows: _venderList.map((e) {
                        return DataRow(
                          onSelectChanged: (value) {
                            //autoTabRouter!.setActiveIndex(43);
                          },
                          cells: [
                            DataCell(_tableHeader(e['id'].toString())),
                            DataCell(_tableHeader(e['r_condition'])),
                            DataCell(_tableHeader(e['date'])),
                          ],
                        );
                      }).toList()),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _tableHeader(String text) {
    return ConstText.lightText(
      text: text,
      fontWeight: FontWeight.w700,
    );
  }
}
