// ignore_for_file: unused_field, library_private_types_in_public_api, prefer_const_declarations, unnecessary_string_interpolations

import 'dart:async';

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
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
    final reduceSecondsBy = 1;
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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            Strings.siddhatva,
            style: TextStyle(
                fontSize: 25,
                color: Color(0XFF5B626B),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Let's get started with Veltrix",
            style: TextStyle(
                color: Color(0XFF5B626B),
                fontWeight: FontWeight.bold,
                fontSize: 27),
          ),
          const Text(
            "It will be as simple as Occidental in fact it will be Occidental.",
            style: TextStyle(
              color: Color(0XFF5B626B),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            children: [
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$days',
                      style: const TextStyle(
                          fontSize: 40,
                          color: ColorConst.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Days",
                      style: TextStyle(
                          color: Color(0XFF5B626B),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$hours',
                      style: const TextStyle(
                          fontSize: 40,
                          color: ColorConst.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Hours",
                      style: TextStyle(
                          color: Color(0XFF5B626B),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$minutes',
                      style: const TextStyle(
                          fontSize: 40,
                          color: ColorConst.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Minutes",
                      style: TextStyle(
                          color: Color(0XFF5B626B),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$seconds',
                      style: const TextStyle(
                          fontSize: 40,
                          color: ColorConst.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Seconds",
                      style: TextStyle(
                          color: Color(0XFF5B626B),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 550,
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
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
          ),
        ],
      ),
    );
  }
}
