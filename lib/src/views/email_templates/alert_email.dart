import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class AlertEmail extends StatelessWidget {
  const AlertEmail({Key? key}) : super(key: key);

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
            decoration: BoxDecoration(
              // color: ColorConst.white,
              border: Border.all(color: Colors.indigo, width: 1.0),
            ),
            child: Column(
              children: [
                Container(
                  height: 65,
                  color: ColorConst.primaryDark,
                  alignment: Alignment.center,
                  child: const Text(
                    'Warning: You\'re approaching your limit. Please upgrade.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      color: ColorConst.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text('You have'),
                          FxBox.w4,
                          Container(
                            height: 24,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Center(
                              child: Text(
                                '1 free report',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text('remaining.'),
                        ],
                      ),
                      FxBox.h20,
                      const Text(
                        "Add your credit card now to upgrade your account to a premium plan to ensure you don't miss out on any reports.",
                        style: TextStyle(color: Color(0XFF212529)),
                      ),
                      FxBox.h20,
                      FxButton(
                        onPressed: () {},
                        buttonType: ButtonType.success,
                        text: 'Upgrade My Account',
                        height: 44.0,
                        borderRadius: 4.0,
                        textWeight: FontWeight.w800,
                      ),
                      FxBox.h20,
                      const Text.rich(
                        TextSpan(
                          text: 'Thanks for choosing',
                          children: <InlineSpan>[
                            TextSpan(
                              text: '  ${Strings.fdash}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' Admin.'),
                          ],
                        ),
                      ),
                      FxBox.h20,
                      const Text(
                        Strings.fdash,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text('Support Team'),
                      FxBox.h36,
                      const Align(
                        alignment: Alignment.center,
                        child: Text('2022 © ${Strings.fdash}.'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
