import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class BillingEmail extends StatelessWidget {
  const BillingEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width >= 560.0
                  ? 512.0
                  : MediaQuery.of(context).size.width - 48,
            ),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: ColorConst.white,
              border: Border.all(width: 3.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FxBox.h40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Thanks for using',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                      ' ${Strings.siddhatva}.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                FxBox.h60,
                const Text(
                  "Company Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("Invoice #6521"),
                const Text("August 01 2017"),
                FxBox.h8,
                const Divider(height: 8.0),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Row(
                      children: const [
                        Text("BS-200 (1 Pc)"),
                        Spacer(),
                        Text("\$10.99"),
                        Divider(
                          color: Colors.deepPurple,
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(height: 8.0);
                  },
                ),
                FxBox.h8,
                const Divider(color: Colors.black, height: 8.0, thickness: 2.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Total	",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$670.99",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Divider(color: Colors.black, height: 8.0, thickness: 2.0),
                FxBox.h60,
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                      "${Strings.siddhatva} Inc. 2896 Howell Rd, Russellville, AR, 72823"),
                ),
                FxBox.h20,
                const Align(
                  alignment: Alignment.center,
                  child: Text("2022 © ${Strings.siddhatva}."),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}