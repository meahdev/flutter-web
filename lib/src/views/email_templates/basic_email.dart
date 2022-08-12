import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class BasicEmail extends StatelessWidget {
  const BasicEmail({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.all(32.0),
            decoration: BoxDecoration(
              color: ColorConst.white,
              border: Border.all(color: Colors.indigo, width: 3.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Please confirm your email address by clicking the link below.",
                  softWrap: true,
                ),
                FxBox.h20,
                const Text(
                  "We may need to send you critical information about our service and it is important that we have an accurate email address.",
                  softWrap: true,
                ),
                FxBox.h20,
                FxButton(
                  onPressed: () {},
                  buttonType: ButtonType.success,
                  text: 'Confirm Email Address',
                  height: 44.0,
                  borderRadius: 4.0,
                  textWeight: FontWeight.w800,
                ),
                FxBox.h20,
                const Text(
                  Strings.siddhatva,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("Support Team"),
                FxBox.h36,
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
