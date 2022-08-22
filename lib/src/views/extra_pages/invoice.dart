// ignore_for_file: depend_on_referenced_packages

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:flutter/material.dart';
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
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.logosm,
                      height: 22,
                      width: 30.8,
                    ),
                    const Spacer(),
                    const Text(
                      'Order # 12345',
                      style: TextStyle(
                        fontSize: 16,
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
                            fontSize: 15,
                          ),
                        ),
                        const Text('John Smith'),
                        const Text('1234 main'),
                        const Text('Apt. 4B'),
                        const Text('Springfield, ST 54321'),
                        FxBox.h32,
                        const Text(
                          "Payment Method:",
                          style: TextStyle(
                            fontSize: 15,
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
                              fontSize: 15,
                            ),
                          ),
                          const Text('Kenny Rigdon'),
                          const Text('1234 main'),
                          const Text('Apt. 4B'),
                          const Text('Springfield, ST 54321'),
                          FxBox.h32,
                          const Text(
                            "Order Date:",
                            style: TextStyle(
                              fontSize: 15,
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
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FxBox.h16,
                SizedBox(
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: DataTable2(
                    dataRowHeight: 50,
                    horizontalMargin: 0,
                    columnSpacing: 8.0,
                    headingTextStyle: const TextStyle(
                      fontSize: 15,
                      color: ColorConst.textColor,
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
                    rows: const <DataRow>[
                      DataRow2(
                        cells: <DataCell>[
                          DataCell(
                            Text(
                              'BS-400',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$10.99',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '1',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$10.99',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                        ],
                      ),
                      DataRow2(
                        cells: <DataCell>[
                          DataCell(
                            Text(
                              'BS-400',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$20.00	',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '3',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$60.00',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                        ],
                      ),
                      DataRow2(
                        cells: <DataCell>[
                          DataCell(
                            Text(
                              'BS-1000',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$600.00',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '1',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$600.00',
                              style: TextStyle(color: ColorConst.textColor),
                            ),
                          ),
                        ],
                      ),
                      DataRow2(
                        cells: <DataCell>[
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                color: ColorConst.textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$670.00',
                              style: TextStyle(
                                color: ColorConst.textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      DataRow2(
                        cells: <DataCell>[
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(
                            Text(
                              'Shipping',
                              style: TextStyle(
                                color: ColorConst.textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$15',
                              style: TextStyle(
                                color: ColorConst.textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      DataRow2(
                        cells: <DataCell>[
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(
                            Text(
                              'Total',
                              style: TextStyle(
                                color: ColorConst.textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '\$685.99',
                              style: TextStyle(
                                fontSize: 20,
                                color: ColorConst.textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
}
