// ignore_for_file: depend_on_referenced_packages

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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // height: MediaQuery.of(context).size.height*.5,
              //width: MediaQuery.of(context).size.width * .9,
              child: Card(
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
                                color: Color(0xFF5B626B),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Divider(height: 34,
                        color: Color(0xFF5B626B),
                        thickness: 0.2,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Billed To:",style: TextStyle(color: Color(0XFF5B626B),fontWeight: FontWeight.bold,fontSize: 15),),
                              const Text('John Smith',style: TextStyle(color: Color(0XFF5B626B)),),
                              const Text('1234 main',style: TextStyle(color: Color(0XFF5B626B)),),
                              const Text('Apt. 4B',style: TextStyle(color: Color(0XFF5B626B)),),
                              const Text('Springfield, ST 54321',style: TextStyle(color: Color(0XFF5B626B)),),
                              FxBox.h32,
                              const Text("Payment Method:",style: TextStyle(color: Color(0XFF5B626B),fontSize: 15,fontWeight: FontWeight.bold),),
                              const Text("Visa ending ****4242",style: TextStyle(color: Color(0XFF5B626B)),),
                              const Text("jssmith@gmail.com",style: TextStyle(color: Color(0XFF5B626B)),),
                            ],
                          ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("Shipped To:",style: TextStyle(color: Color(0XFF5B626B),fontWeight: FontWeight.bold,fontSize: 15),),
                              const Text('Kenny Rigdon',style: TextStyle(color: Color(0XFF5B626B)),),
                              const Text('1234 main',style: TextStyle(color: Color(0XFF5B626B)),),
                              const Text('Apt. 4B',style: TextStyle(color: Color(0XFF5B626B)),),
                              const Text('Springfield, ST 54321',style: TextStyle(color: Color(0XFF5B626B)),),
                              FxBox.h32,
                              const Text("Order Date:",style: TextStyle(color: Color(0XFF5B626B),fontSize: 15,fontWeight: FontWeight.bold),),
                              const Text("January 16,2019",style: TextStyle(color: Color(0XFF5B626B)),),
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
                            color: Color(0xFF5B626B),
                            fontWeight: FontWeight.w800),
                      ),
                      FxBox.h16,
                      SizedBox(
                        height: 400,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: DataTable2(
                          dataRowHeight: 50,
                          horizontalMargin: 0,
                          headingTextStyle: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF5B626B),
                              fontWeight: FontWeight.w600),
                          columns: const <DataColumn>[
                            DataColumn2(label: Text('Item',),),
                            DataColumn2(label: Text('Price',),),
                            DataColumn2(label: Text('Quantity',),),
                            DataColumn2(label: Text('Totals',),),],
                          rows: const <DataRow>[
                            DataRow2(
                              cells: <DataCell>[
                                DataCell(Text('BS-400', style: TextStyle(color: Color(0xFF5B626B)),),),
                                DataCell(Text('\$10.99', style: TextStyle(color: Color(0xFF5B626B)),),),
                                DataCell(Text('1', style: TextStyle( color: Color(0xFF5B626B)),),),
                                DataCell(Text('\$10.99', style: TextStyle( color: Color(0xFF5B626B)),),),
                              ],
                            ),
                            DataRow2(
                              cells: <DataCell>[
                                DataCell(Text('BS-400', style: TextStyle( color: Color(0xFF5B626B)),),),
                                DataCell(Text('\$20.00	', style: TextStyle(color: Color(0xFF5B626B)),),),
                                DataCell(Text('3', style: TextStyle( color: Color(0xFF5B626B)),),),
                                DataCell(Text('\$60.00', style: TextStyle( color: Color(0xFF5B626B)),),),
                              ],
                            ),
                            DataRow2(
                              cells: <DataCell>[
                                DataCell(Text('BS-1000', style: TextStyle(color: Color(0xFF5B626B)),),),
                                DataCell(Text('\$600.00', style: TextStyle(color: Color(0xFF5B626B)),),),
                                DataCell(Text('1', style: TextStyle( color: Color(0xFF5B626B)),),),
                                DataCell(Text('\$600.00', style: TextStyle( color: Color(0xFF5B626B)),),),
                              ],
                            ),
                            DataRow2(
                              cells: <DataCell>[
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text('Subtotal', style: TextStyle(color: Color(0xFF5B626B), fontWeight: FontWeight.bold),),),
                                DataCell(Text('\$670.00', style: TextStyle( color: Color(0xFF5B626B), fontWeight: FontWeight.w600),),),
                              ],
                            ),
                            DataRow2(
                              cells: <DataCell>[
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text('Shipping', style: TextStyle(color: Color(0xFF5B626B), fontWeight: FontWeight.bold),),),
                                DataCell(Text('\$15', style: TextStyle( color: Color(0xFF5B626B), fontWeight: FontWeight.w600), ),),
                              ],
                            ),
                            DataRow2(
                              cells: <DataCell>[
                                DataCell(Text("")),
                                DataCell(Text("")),
                                DataCell(Text('Total', style: TextStyle( color: Color(0xFF5B626B), fontWeight: FontWeight.bold),),),
                                DataCell(Text('\$685.99', style: TextStyle(fontSize: 20, color: Color(0xFF5B626B), fontWeight: FontWeight.bold),),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.teal.shade300),
                              elevation:MaterialStateProperty.all(0) ,shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)))),
                              onPressed: (){},
                              child: Icon(Icons.print,color: Colors.white,)),
                          FxBox.w10,
                          FxButton(onPressed: (){},
                            text: "Send",
                            color: Colors.indigo.shade500,borderRadius: 4,height: 40),
                        ],
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
