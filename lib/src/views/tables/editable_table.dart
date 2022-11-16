import 'package:admin_dashboard/src/provider/table/editabletable/bloc/editable_table_bloc.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class EditableTable extends StatefulWidget {
  const EditableTable({Key? key}) : super(key: key);

  @override
  State<EditableTable> createState() => _EditableTableState();
}

class _EditableTableState extends State<EditableTable> {
  final EditableTableBloc _editableTableBloc = EditableTableBloc();

  int _selectedIndex = -1;

  final name1 = TextEditingController();
  final age1 = TextEditingController();
  final id1 = TextEditingController();
  final gender1 = TextEditingController();

  final name2 = TextEditingController();
  final age2 = TextEditingController();
  final id2 = TextEditingController();
  final gender2 = TextEditingController();

  final name3 = TextEditingController();
  final age3 = TextEditingController();
  final id3 = TextEditingController();
  final gender3 = TextEditingController();

  final name4 = TextEditingController();
  final age4 = TextEditingController();
  final id4 = TextEditingController();
  final gender4 = TextEditingController();

  final name5 = TextEditingController();
  final age5 = TextEditingController();
  final id5 = TextEditingController();
  final gender5 = TextEditingController();

  List<Map<String, dynamic>> ls = [
    {"id": "1", "name": "Jane Deo", "age": "22", "gender": "male"},
    {"id": "2", "name": "Joe Blow", "age": "23", "gender": "male"},
    {"id": "3", "name": "Jhon Wick", "age": "25", "gender": "male"},
    {"id": "4", "name": "Joe Wick", "age": "25", "gender": "male"},
    {"id": "5", "name": "Jane Blow", "age": "27", "gender": "male"},
  ];

  late List<Map<String, dynamic>> _controller;

  @override
  void initState() {
    super.initState();
    _controller = [
      {"id": id1, "name": name1, "age": age1, "gender": gender1},
      {"id": id2, "name": name2, "age": age2, "gender": gender2},
      {"id": id3, "name": name3, "age": age3, "gender": gender3},
      {"id": id4, "name": name4, "age": age4, "gender": gender4},
      {"id": id5, "name": name5, "age": age5, "gender": gender5},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _editableTableBloc,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Table Edits',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FxBox.h20,
              SizedBox(
                height: 296,
                child: BlocBuilder<EditableTableBloc, EditableTableState>(
                  builder: (context, state) {
                    return DataTable2(
                      minWidth: 700,
                      columns: [
                        DataColumn2(
                          label:
                              sizedBox(text: "ID", fontwidget: FontWeight.bold),
                          size: ColumnSize.S,
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "Name", fontwidget: FontWeight.bold),
                          size: ColumnSize.L,
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "Age", fontwidget: FontWeight.bold),
                          size: ColumnSize.S,
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "Gender", fontwidget: FontWeight.bold),
                          size: ColumnSize.S,
                        ),
                        DataColumn2(
                          label: sizedBox(
                              text: "Edit", fontwidget: FontWeight.bold),
                          size: ColumnSize.S,
                        ),
                      ],
                      rows: List.generate(
                        5,
                        (index) => DataRow2(
                          onDoubleTap: () {
                            if (_selectedIndex != index) {
                              _selectedIndex = index;
                            } else {
                              _selectedIndex = -1;
                            }
                            if (_selectedIndex == index) {
                              updateContollerValue(index);
                            } else {
                              updateListValue(index);
                            }
                            _editableTableBloc
                                .add(const EditableTableEvent.rebuild());
                          },
                          cells: [
                            DataCell(
                              _selectedIndex != index
                                  ? sizedBox(text: ls[index]["id"].toString())
                                  : container(
                                      controller: _controller[index]["id"]),
                            ),
                            DataCell(
                              _selectedIndex != index
                                  ? sizedBox(text: ls[index]["name"])
                                  : container(
                                      controller: _controller[index]["name"]),
                            ),
                            DataCell(
                              _selectedIndex != index
                                  ? sizedBox(text: ls[index]["age"].toString())
                                  : container(
                                      controller: _controller[index]["age"]),
                            ),
                            DataCell(
                              _selectedIndex != index
                                  ? sizedBox(text: ls[index]["gender"])
                                  : container(
                                      controller: _controller[index]["gender"]),
                            ),
                            DataCell(
                              IconButton(
                                splashRadius: 20.0,
                                icon: Icon(
                                  _selectedIndex != index
                                      ? Icons.edit
                                      : Icons.save,
                                ),
                                onPressed: () {
                                  if (_selectedIndex != index) {
                                    _selectedIndex = index;
                                  } else {
                                    _selectedIndex = -1;
                                  }

                                  if (_selectedIndex == index) {
                                    updateContollerValue(index);
                                  } else {
                                    updateListValue(index);
                                  }
                                  _editableTableBloc
                                      .add(const EditableTableEvent.rebuild());
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget sizedBox({String? text, FontWeight? fontwidget = FontWeight.normal}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Text(
        '$text',
        softWrap: true,
        style: TextStyle(fontSize: 17, fontWeight: fontwidget),
      ),
    );
  }

  Widget container({required TextEditingController controller}) {
    return SizedBox(
      height: 30,
      width: 150,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 10, left: 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(04)),
        ),
      ),
    );
  }

  void updateListValue(int i) {
    ls[i]["id"] = i == 0
        ? id1.text
        : i == 1
            ? id2.text
            : i == 2
                ? id3.text
                : i == 3
                    ? id4.text
                    : id5.text;
    ls[i]["name"] = i == 0
        ? name1.text
        : i == 1
            ? name2.text
            : i == 2
                ? name3.text
                : i == 3
                    ? name4.text
                    : name5.text;
    ls[i]["age"] = i == 0
        ? age1.text
        : i == 1
            ? age2.text
            : i == 2
                ? age3.text
                : i == 3
                    ? age4.text
                    : age5.text;
    ls[i]["gender"] = i == 0
        ? gender1.text
        : i == 1
            ? gender2.text
            : i == 2
                ? gender3.text
                : i == 3
                    ? gender4.text
                    : gender5.text;
  }

  void updateContollerValue(int i) {
    var id = ls[i]["id"].toString();
    var name = ls[i]["name"];
    var age = ls[i]["age"].toString();
    var gender = ls[i]["gender"];

    if (i == 0) {
      id1.text = id;
      name1.text = name;
      age1.text = age;
      gender1.text = gender;
    } else if (i == 1) {
      id2.text = id;
      name2.text = name;
      age2.text = age;
      gender2.text = gender;
    } else if (i == 2) {
      id3.text = id;
      name3.text = name;
      age3.text = age;
      gender3.text = gender;
    } else if (i == 3) {
      id4.text = id;
      name4.text = name;
      age4.text = age;
      gender4.text = gender;
    } else {
      id5.text = id;
      name5.text = name;
      age5.text = age;
      gender5.text = gender;
    }
  }
}
