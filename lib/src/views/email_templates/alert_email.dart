import 'package:admin_dashboard/src/constant/color.dart';
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
          padding: const EdgeInsets.all(20.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 512.0),
            child: Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: ColorConst.white,
                border: Border.all(color: Colors.indigo, width: 3.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Please confirm your email address by clicking the link below.",
                  ),
                  FxBox.h20,
                  const Text(
                    "We may need to send you critical information about our service and it is important that we have an accurate email address.",
                  ),
                  FxBox.h20,
                  // SizedBox(
                  //   height: 45,
                  //   width: 180,
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //         elevation: 0, primary: Colors.teal.shade400),
                  //     onPressed: () {},
                  //     child: const Text(
                  //       "Confirm Email Address",
                  //       style: TextStyle(fontWeight: FontWeight.bold),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Veltrix",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Support Team",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: Text("2022 © Veltrix.")),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
