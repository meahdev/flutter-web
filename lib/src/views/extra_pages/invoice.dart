import 'package:admin_dashboard/src/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // height: MediaQuery.of(context).size.height*.5,
              width: MediaQuery.of(context).size.width * .9,
              child: Card(
                color: Colors.white,
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
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
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Divider(
                        color: Color(0xFF5B626B),
                        thickness: 0.2,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Billed To: ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Shipped To: ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            '''
John Smith 
1234 Main 
Apt. 4B 
Springfield, ST 54321''',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            '''
Kenny Rigdon 
1234 Main 
Apt. 4B 
Springfield, ST 54321''',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      FxBox.h20,
                      Row(
                        children: const [
                          Text(
                            'Payment Method: ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Order Date: ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '''
Visa ending **** 4242 
jsmith@email.com''',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            'January 16, 2019',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      FxBox.h20,
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Order summary',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF5B626B),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      FxBox.h20,
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: DataTable(
                          dataRowHeight: 50,
                          horizontalMargin: 0,
                          headingTextStyle: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF5B626B),
                              fontWeight: FontWeight.w600),
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'Item',
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Price',
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Quantity',
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Totals',
                              ),
                            ),
                          ],
                          rows: <DataRow>[
                            const DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  Text(
                                    'BS-400',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$10.99',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$10.99',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                              ],
                            ),
                            const DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  Text(
                                    'BS-400',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$20.00	',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '3',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$60.00',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                              ],
                            ),
                            const DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  Text(
                                    'BS-1000',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$600.00',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$600.00',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xFF5B626B)),
                                  ),
                                ),
                              ],
                            ),
                            const DataRow(
                              cells: <DataCell>[
                                DataCell(SizedBox()),
                                DataCell(SizedBox()),
                                DataCell(
                                  Text(
                                    'Subtotal',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF5B626B),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$670.00',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF5B626B),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            const DataRow(
                              cells: <DataCell>[
                                DataCell(SizedBox()),
                                DataCell(SizedBox()),
                                DataCell(
                                  Text(
                                    'Shipping',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF5B626B),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$15',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF5B626B),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            const DataRow(
                              cells: <DataCell>[
                                DataCell(SizedBox()),
                                DataCell(SizedBox()),
                                DataCell(
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF5B626B),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '\$685.99',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF5B626B),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                const DataCell(SizedBox()),
                                const DataCell(SizedBox()),
                                DataCell(FxButton(
                                    onPressed: () {},
                                    borderRadius: 2,
                                    color: const Color(0xFF02A499),
                                    icon: const Icon(Icons.print))),
                                DataCell(FxButton(
                                  onPressed: () {},
                                  text: 'Send',
                                  borderRadius: 3,
                                  color: const Color(0xFF626ED4),
                                  textColor: Colors.white,
                                )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
