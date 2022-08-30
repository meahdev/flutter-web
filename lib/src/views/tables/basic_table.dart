import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/theme/bloc/theme_mode_bloc.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class BasicTable extends StatelessWidget {
  const BasicTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Responsive.isWeb(context)
          ? [
              Row(
                children: [
                  Expanded(
                    child:
                        _tableCard(title: 'Basic table', child: _basicTable()),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _tableCard(title: 'Dark table', child: _darkTable()),
                  ),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  Expanded(
                    child: _tableCard(
                        title: 'Striped rows', child: _stripedTable()),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _tableCard(
                        title: 'Hoverable rows', child: _hoverableTable()),
                  ),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  Expanded(
                    child: _tableCard(
                        title: 'Bordered table', child: _borderedTable()),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _tableCard(
                        title: 'Borderless table', child: _borderlessTable()),
                  ),
                ],
              ),
              FxBox.h20,
              Row(
                children: [
                  Expanded(
                    child:
                        _tableCard(title: 'Small table', child: _smallTable()),
                  ),
                  FxBox.w20,
                  Expanded(
                    child: _tableCard(
                        title: 'Contextual table', child: _contextualTable()),
                  ),
                ],
              ),
            ]
          : [
              _tableCard(title: 'Basic table', child: _basicTable()),
              FxBox.h20,
              _tableCard(title: 'Dark table', child: _darkTable()),
              FxBox.h20,
              _tableCard(title: 'Striped rows', child: _stripedTable()),
              FxBox.h20,
              _tableCard(title: 'Hoverable rows', child: _hoverableTable()),
              FxBox.h20,
              _tableCard(title: 'Bordered table', child: _borderedTable()),
              FxBox.h20,
              _tableCard(title: 'Borderless table', child: _borderlessTable()),
              FxBox.h20,
              _tableCard(title: 'Small table', child: _smallTable()),
              FxBox.h20,
              _tableCard(title: 'Contextual table', child: _contextualTable()),
            ],
    );
  }

  Widget _basicTable() {
    return SizedBox(
      height: 200,
      child: DataTable2(
        minWidth: 600,
        dividerThickness: 1,
        showBottomBorder: true,
        columns: _dataColumn(),
        rows: _dataRow(),
      ),
    );
  }

  Widget _darkTable() {
    return SizedBox(
      height: 200,
      child: DataTable2(
        minWidth: 600,
        showBottomBorder: true,
        headingRowColor: MaterialStateProperty.all(
            isDark ? ColorConst.darkContainer : Colors.black),
        dataRowColor: MaterialStateProperty.all(
            isDark ? ColorConst.darkContainer : Colors.black),
        dataTextStyle: const TextStyle(color: Colors.white),
        headingTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        dividerThickness: 1,
        columns: _dataColumn(),
        rows: _dataRow(),
      ),
    );
  }

  Widget _stripedTable() {
    return BlocBuilder<ThemeModeBloc, ThemeModeState>(
      builder: (context, state) {
        return SizedBox(
          height: 200,
          child: DataTable2(
            minWidth: 600,
            showBottomBorder: true,
            dividerThickness: 1,
            columns: _dataColumn(),
            rows: [
              DataRow2(
                color: MaterialStateProperty.all(
                  isDark ? ColorConst.darkContainer : Colors.grey.shade200,
                ),
                cells: [
                  DataCell(sizedBox(text: "1")),
                  DataCell(sizedBox(text: "bhavesh")),
                  DataCell(sizedBox(text: "vaghasiya")),
                  DataCell(sizedBox(text: "@flutter")),
                ],
              ),
              DataRow2(
                cells: [
                  DataCell(sizedBox(text: "2")),
                  DataCell(sizedBox(text: "vishal")),
                  DataCell(sizedBox(text: "makwana")),
                  DataCell(sizedBox(text: "@android")),
                ],
              ),
              DataRow2(
                color: MaterialStateProperty.all(
                  isDark ? ColorConst.darkContainer : Colors.grey.shade200,
                ),
                cells: [
                  DataCell(sizedBox(text: "3")),
                  DataCell(sizedBox(text: "keval")),
                  DataCell(sizedBox(text: "gajera")),
                  DataCell(sizedBox(text: "@flutter")),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _borderedTable() {
    return SizedBox(
      height: 200,
      child: DataTable2(
        minWidth: 600,
        border: TableBorder.all(
          color: isDark
              ? ColorConst.darkFontColor.withOpacity(0.25)
              : ColorConst.lightFontColor,
        ),
        dividerThickness: 0,
        columns: _dataColumn(),
        rows: _dataRow(),
      ),
    );
  }

  Widget _borderlessTable() {
    return SizedBox(
      height: 200,
      child: DataTable2(
        minWidth: 600,
        dividerThickness: 0,
        columns: _dataColumn(),
        rows: _dataRow(),
      ),
    );
  }

  Widget _hoverableTable() {
    return SizedBox(
      height: 200,
      child: DataTable2(
        minWidth: 600,
        dataRowColor: MaterialStateProperty.resolveWith(_getDataRowColor),
        dividerThickness: 1,
        showCheckboxColumn: false,
        showBottomBorder: true,
        columns: _dataColumn(),
        rows: [
          DataRow2(
            onSelectChanged: (value) {},
            cells: [
              DataCell(sizedBox(text: "1")),
              DataCell(sizedBox(text: "bhavesh")),
              DataCell(sizedBox(text: "vaghasiya")),
              DataCell(sizedBox(text: "@flutter")),
            ],
          ),
          DataRow2(
            onSelectChanged: (value) {},
            cells: [
              DataCell(sizedBox(text: "2")),
              DataCell(sizedBox(text: "vishal")),
              DataCell(sizedBox(text: "makwana")),
              DataCell(sizedBox(text: "@android")),
            ],
          ),
          DataRow2(
            onSelectChanged: (value) {},
            cells: [
              DataCell(sizedBox(text: "3")),
              DataCell(sizedBox(text: "keval")),
              DataCell(sizedBox(text: "gajera")),
              DataCell(sizedBox(text: "@flutter")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _smallTable() {
    return SizedBox(
      height: 200,
      child: DataTable2(
        minWidth: 600,
        dividerThickness: 1,
        showBottomBorder: true,
        dataRowHeight: 35,
        columns: _dataColumn(),
        rows: [
          DataRow2(
            cells: [
              DataCell(sizedBox(text: "1")),
              DataCell(sizedBox(text: "bhavesh")),
              DataCell(sizedBox(text: "vaghasiya")),
              DataCell(sizedBox(text: "@flutter")),
            ],
          ),
          DataRow2(
            cells: [
              DataCell(sizedBox(text: "2")),
              DataCell(sizedBox(text: "vishal")),
              DataCell(sizedBox(text: "makwana")),
              DataCell(sizedBox(text: "@android")),
            ],
          ),
          DataRow2(
            cells: [
              DataCell(sizedBox(text: "3")),
              DataCell(sizedBox(text: "keval")),
              DataCell(sizedBox(text: "gajera")),
              DataCell(sizedBox(text: "@flutter")),
            ],
          ),
          DataRow2(
            cells: [
              DataCell(sizedBox(text: "4")),
              DataCell(sizedBox(text: "parth")),
              DataCell(sizedBox(text: "surani")),
              DataCell(sizedBox(text: "@web")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _contextualTable() {
    return SizedBox(
      height: 200,
      child: DataTable2(
        minWidth: 600,
        showBottomBorder: true,
        dividerThickness: 1,
        columns: _dataColumn(),
        rows: [
          DataRow2(
            color: MaterialStateProperty.all(
              ColorConst.success.withOpacity(0.25),
            ),
            cells: [
              DataCell(sizedBox(text: "1")),
              DataCell(sizedBox(text: "bhavesh")),
              DataCell(sizedBox(text: "vaghasiya")),
              DataCell(sizedBox(text: "@flutter")),
            ],
          ),
          DataRow2(
            color: MaterialStateProperty.all(
              ColorConst.info.withOpacity(0.25),
            ),
            cells: [
              DataCell(sizedBox(text: "2")),
              DataCell(sizedBox(text: "vishal")),
              DataCell(sizedBox(text: "makwana")),
              DataCell(sizedBox(text: "@android")),
            ],
          ),
          DataRow2(
            color: MaterialStateProperty.all(
              ColorConst.warning.withOpacity(0.25),
            ),
            cells: [
              DataCell(sizedBox(text: "3")),
              DataCell(sizedBox(text: "keval")),
              DataCell(sizedBox(text: "gajera")),
              DataCell(sizedBox(text: "@flutter")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tableCard({required String title, required Widget child}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            FxBox.h20,
            child
          ],
        ),
      ),
    );
  }

  List<DataColumn2> _dataColumn() {
    return [
      DataColumn2(
        label: sizedBox(
          text: "#",
          fontwidget: FontWeight.bold,
        ),
      ),
      DataColumn2(
        label: sizedBox(
          text: "Fist Name",
          fontwidget: FontWeight.bold,
        ),
      ),
      DataColumn2(
        label: sizedBox(
          text: "Last Name",
          fontwidget: FontWeight.bold,
        ),
      ),
      DataColumn2(
        label: sizedBox(
          text: "User Name",
          fontwidget: FontWeight.bold,
        ),
      ),
    ];
  }

  List<DataRow2> _dataRow() {
    return [
      DataRow2(
        cells: [
          DataCell(sizedBox(text: "1")),
          DataCell(sizedBox(text: "bhavesh")),
          DataCell(sizedBox(text: "vaghasiya")),
          DataCell(sizedBox(text: "@flutter")),
        ],
      ),
      DataRow2(
        cells: [
          DataCell(sizedBox(text: "2")),
          DataCell(sizedBox(text: "vishal")),
          DataCell(sizedBox(text: "makwana")),
          DataCell(sizedBox(text: "@android")),
        ],
      ),
      DataRow2(
        cells: [
          DataCell(sizedBox(text: "3")),
          DataCell(sizedBox(text: "keval")),
          DataCell(sizedBox(text: "gajera")),
          DataCell(sizedBox(text: "@flutter")),
        ],
      ),
    ];
  }

  Widget sizedBox({String? text, FontWeight? fontwidget = FontWeight.normal}) {
    return Text(
      '$text',
      softWrap: true,
      style: TextStyle(fontSize: 16, fontWeight: fontwidget),
    );
  }

  Color _getDataRowColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    if (states.any(interactiveStates.contains)) {
      return isDark ? ColorConst.darkContainer : Colors.grey.shade200;
    }
    return Colors.transparent;
  }
}
