import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/table/datatable/bloc/data_table_bloc.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class Datatable extends StatefulWidget {
  const Datatable({Key? key}) : super(key: key);

  @override
  State<Datatable> createState() => _DatatableState();
}

class _DatatableState extends State<Datatable> {
  final DataTableBloc _dataTableBloc = DataTableBloc();
  List<int> ls = List<int>.generate(57, (index) => index + 1);
  int _isselect = 10;
  int _dropValue = 10;
  int _page = 0;

  int _start = 0;
  int _end = 10;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _dataTableBloc,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<DataTableBloc, DataTableState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Default Datatable',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Text("Show   "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          focusColor: Colors.transparent,
                          items: <int>[10, 20, 50, 100].map((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            if (value != null) {
                              double b = ls.length / value;
                              _isselect = ls.length % value == 0
                                  ? b.toInt()
                                  : (b + 1).toInt();
                              _dropValue = value;
                              _start = 0;
                              _end = value < ls.length ? value : ls.length;
                              _page = 0;
                              _dataTableBloc
                                  .add(const DataTableEvent.rebuild());
                            }
                          },
                          value: _dropValue,
                        ),
                      ),
                      const Text(" entries"),
                      const Spacer(),
                      SizedBox(
                        width: 185,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(bottom: 8, left: 8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            icon: const Text("Search"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  FxBox.h20,
                  SizedBox(
                    height: ls.length < _dropValue
                        ? (ls.length * 48)
                        : (_dropValue + 1) * 48,
                    child: DataTable2(
                      minWidth: 950,
                      border: TableBorder.all(
                        color: isDark
                            ? ColorConst.darkFontColor.withOpacity(0.25)
                            : ColorConst.lightFontColor,
                      ),
                      dividerThickness: 0,
                      headingRowHeight: 48,
                      dataRowHeight: 48,
                      columns: [
                        DataColumn2(
                          label:
                              sizedBox(text: "#", fontwidget: FontWeight.bold),
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "First Name", fontwidget: FontWeight.bold),
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "Last Name", fontwidget: FontWeight.bold),
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "Position", fontwidget: FontWeight.bold),
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "Age", fontwidget: FontWeight.bold),
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "Salary", fontwidget: FontWeight.bold),
                        ),
                      ],
                      rows: ls
                          .getRange(_start, _end)
                          .map(
                            (e) => DataRow2(
                              cells: [
                                DataCell(sizedBox(text: "$e")),
                                DataCell(sizedBox(text: "bhavesh")),
                                DataCell(sizedBox(text: "vaghasiya")),
                                DataCell(sizedBox(text: "@flutter")),
                                DataCell(sizedBox(text: "25")),
                                DataCell(sizedBox(text: "22,500")),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  FxBox.h20,
                  Responsive.isMobile(context)
                      ? Column(
                          children: _paggination(),
                        )
                      : Row(
                          children: _paggination(),
                        )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _paggination() {
    return [
      Text("Showing ${_start + 1} to $_end of ${ls.length} entries"),
      Responsive.isMobile(context) ? FxBox.h16 : const Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FxButton(
            onPressed: () {
              if (_page > 0) {
                  _page = _page - 1;
                  _dataTableBloc.add(const DataTableEvent.rebuild());
              }
              updateData();
            },
            text: 'Privious',
            borderRadius: 0.0,
            borderWidth: 0.0,
            color: ColorConst.white,
            textColor: isDark
                ? null
                : Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          Wrap(
            children: List.generate(
              (ls.length / _dropValue).ceil(),
              (index) => FxButton(
                text: '${index + 1}',
                borderRadius: 0.0,
                minWidth: 16.0,
                color: _page == index
                    ? isDark
                        ? Theme.of(context).colorScheme.inversePrimary
                        : Theme.of(context).colorScheme.onPrimaryContainer
                    : ColorConst.white,
                textColor: _page == index
                    ? ColorConst.white
                    : isDark
                        ? null
                        : Theme.of(context).colorScheme.onPrimaryContainer,
                borderWidth: 0.0,
                onPressed: () {
                    _page = index;
                    updateData();
                    _dataTableBloc.add(const DataTableEvent.rebuild());
                },
              ),
            ),
          ),
          FxButton(
            onPressed: () {
              if (_page < _isselect - 1) {
                  _page = _page + 1;
                  _dataTableBloc.add(const DataTableEvent.rebuild());
              }
              updateData();
            },
            text: 'Next',
            borderRadius: 0.0,
            borderWidth: 0.0,
            color: ColorConst.white,
            textColor: isDark
                ? null
                : Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ],
      )
    ];
  }

  Widget sizedBox({String? text, FontWeight? fontwidget = FontWeight.normal}) {
    return Text(
      '$text',
      softWrap: true,
      style: TextStyle(fontSize: 16, fontWeight: fontwidget),
    );
  }

  void updateData() {
    if (_page == 0) {
      _start = 0;
      _end = ls.length < _dropValue ? ls.length : _dropValue;
    } else {
      _start = _page * _dropValue;
      _end = _start + (ls.length < _dropValue ? ls.length : _dropValue);
      _end = _end < ls.length ? _end : ls.length;
    }
  }
}
