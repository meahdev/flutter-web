import 'dart:async';

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  ComingSoonState createState() => ComingSoonState();
}

class ComingSoonState extends State<ComingSoon> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(days: 5);

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(myDuration.inDays.remainder(90));
    final hours = strDigits(myDuration.inHours.remainder(24));
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FxBox.h20,
              Text(
                Strings.siddhatva,
                style: TextStyle(
                  fontSize: 25,
                  color:
                      isDark ? ColorConst.darkFontColor : ColorConst.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FxBox.h20,
              Text(
                "Let's get started with Veltrix",
                style: TextStyle(
                  color:
                      isDark ? ColorConst.darkFontColor : ColorConst.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              Text(
                "It will be as simple as Occidental in fact it will be Occidental.",
                style: TextStyle(
                  color:
                      isDark ? ColorConst.darkFontColor : ColorConst.textColor,
                ),
              ),
              FxBox.h52,
              Responsive.isWeb(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _timerBox('Days', days),
                        FxBox.w20,
                        _timerBox('Hours', hours),
                        FxBox.w20,
                        _timerBox('Minutes', minutes),
                        FxBox.w20,
                        _timerBox('Seconds', seconds),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _timerBox('Days', days),
                            FxBox.w20,
                            _timerBox('Hours', hours),
                          ],
                        ),
                        FxBox.h20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _timerBox('Minutes', minutes),
                            FxBox.w20,
                            _timerBox('Seconds', seconds),
                          ],
                        ),
                      ],
                    ),
              FxBox.h44,
              _emailField(),
              FxBox.h20,
            ],
          ),
        ),
      ),
    );
  }

  Widget _timerBox(String title, String value) {
    return Card(
      child: SizedBox(
        height: 130,
        width: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 40,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: isDark ? ColorConst.darkFontColor : ColorConst.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      constraints: const BoxConstraints(maxWidth: 550),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Enter email address",
          contentPadding: const EdgeInsets.only(left: 25),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 4),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ColorConst.primary,
              ),
              onPressed: () {},
              child: const Text(
                "Subscribe",
                style: TextStyle(
                  color: ColorConst.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
