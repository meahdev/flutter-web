import 'package:admin_dashboard/src/constant/string.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class ResponsiveTable extends StatelessWidget {
  const ResponsiveTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              Strings.responsiveTable,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            FxBox.h20,
            SizedBox(
              height: MediaQuery.of(context).size.height - 240,
              child: DataTable2(
                minWidth: 600,
                dividerThickness: 1,
                showBottomBorder: true,
                columns: _dataColumn(),
                rows: List.generate(
                  50,
                  (index) => DataRow2(
                    cells: [
                      DataCell(sizedBox(text: '${index + 1}')),
                      DataCell(sizedBox(text: "bhavesh")),
                      DataCell(sizedBox(text: "vaghasiya")),
                      DataCell(sizedBox(text: "@flutter")),
                    ],
                  ),
                ),
              ),
            )
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

  Widget sizedBox({String? text, FontWeight? fontwidget = FontWeight.normal}) {
    return Text(
      '$text',
      softWrap: true,
      style: TextStyle(fontSize: 16, fontWeight: fontwidget),
    );
  }
}
