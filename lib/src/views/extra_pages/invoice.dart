import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/theme/bloc/theme_mode_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';
import 'package:data_table_2/data_table_2.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.smLogo,
                      height: 25,
                      width: 30.8,
                    ),
                    const Spacer(),
                    const Text(
                      'Order # 12345',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const Divider(
                  height: 34,
                  color: ColorConst.textColor,
                  thickness: 0.2,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Billed To:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Text('John Smith'),
                        const Text('20th Avenue'),
                        const Text('Elkton,sd'),
                        const Text('United States'),
                        FxBox.h32,
                        const Text(
                          "Payment Method:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text("Visa ending ****4242"),
                        const Text("jsmith@gmail.com"),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "Shipped To:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Text('Kenny Rigdon'),
                          const Text('20th Avenue'),
                          const Text('Elkton,sd'),
                          const Text('United States'),
                          FxBox.h32,
                          const Text(
                            "Order Date:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("January 16,2019"),
                        ],
                      ),
                    )
                  ],
                ),
                FxBox.h32,
                const Text(
                  'Order summary',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FxBox.h16,
                SizedBox(
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: BlocBuilder<ThemeModeBloc, ThemeModeState>(
                    builder: (context, state) {
                      return DataTable2(
                        dataRowHeight: 50,
                        horizontalMargin: 0,
                        columnSpacing: 8.0,
                        headingTextStyle: TextStyle(
                          fontSize: 16,
                          color: isDark
                              ? ColorConst.darkFontColor
                              : ColorConst.textColor,
                          fontWeight: FontWeight.w600,
                        ),
                        columns: const <DataColumn>[
                          DataColumn2(
                            label: Text('Item'),
                          ),
                          DataColumn2(
                            label: Text(
                              'Price',
                            ),
                          ),
                          DataColumn2(
                            label: Text(
                              'Quantity',
                            ),
                          ),
                          DataColumn2(
                            label: Text(
                              'Totals',
                            ),
                          ),
                        ],
                        rows: <DataRow>[
                          DataRow2(
                            cells: <DataCell>[
                              DataCell(_dataCell('BS-100')),
                              DataCell(_dataCell('\$9.99')),
                              DataCell(_dataCell('1')),
                              DataCell(_dataCell('\$9.99')),
                            ],
                          ),
                          DataRow2(
                            cells: <DataCell>[
                              DataCell(_dataCell('BS-500')),
                              DataCell(_dataCell('\$15.00	')),
                              DataCell(_dataCell('3')),
                              DataCell(_dataCell('\$45.00')),
                            ],
                          ),
                          DataRow2(
                            cells: <DataCell>[
                              DataCell(_dataCell('BS-300')),
                              DataCell(_dataCell('\$599.99')),
                              DataCell(_dataCell('1')),
                              DataCell(_dataCell('\$599.99')),
                            ],
                          ),
                          DataRow2(
                            cells: <DataCell>[
                              const DataCell(Text("")),
                              const DataCell(Text("")),
                              DataCell(_dataCell('Subtotal')),
                              DataCell(_dataCell('\$654.98')),
                            ],
                          ),
                          DataRow2(
                            cells: <DataCell>[
                              const DataCell(Text("")),
                              const DataCell(Text("")),
                              DataCell(_dataCell('Shipping')),
                              DataCell(_dataCell('\$20')),
                            ],
                          ),
                          DataRow2(
                            cells: <DataCell>[
                              const DataCell(Text("")),
                              const DataCell(Text("")),
                              DataCell(_dataCell('Total')),
                              DataCell(_dataCell('\$674.98')),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          ColorConst.darkGreen,
                        ),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.print,
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                    FxBox.w10,
                    FxButton(
                      onPressed: () {},
                      text: "Send",
                      borderRadius: 4,
                      height: 40,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _dataCell(text) {
    return Text(
      text,
      style: TextStyle(
        color: isDark ? ColorConst.darkFontColor : ColorConst.textColor,
      ),
    );
  }
}
