// ignore_for_file: unnecessary_string_interpolations

import 'dart:ui';

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Pricing extends StatefulWidget {
  const Pricing({Key? key}) : super(key: key);

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  final iconList = [
    Icons.flight,
    Icons.emoji_events,
    Icons.beach_access,
    Icons.ac_unit
  ];
  final headingList = ["Starter", "Professional", 'Enterprise', "Unlimited"];
  final priseList = ["19", "29", "39", "49"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Responsive.isMobile(context)
                ? Wrap(
                    children: List.generate(
                        4,
                        (index) => SizedBox(
                              width: MediaQuery.of(context).size.width * .72,
                              child: Card(
                                margin: const EdgeInsets.all(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            iconList[index],
                                          ),
                                          const Spacer(),
                                          Column(
                                            children: [
                                              Text(
                                                "${headingList[index]}",
                                                style: const TextStyle(
                                                    color: ColorConst.textColor,
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                "Sed ut neque unde",
                                                style: TextStyle(
                                                    color: ColorConst.textColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      FxBox.h24,
                                      listTile(
                                        text: "Free Live Support",
                                        icons: Icons.check,
                                      ),
                                      listTile(
                                        text: "Unlimited User",
                                        icons: Icons.check,
                                      ),
                                      listTile(
                                        text: "No Time Tracking",
                                        icons: Icons.check,
                                      ),
                                      listTile(
                                        text: "Free Setup",
                                        icons: Icons.clear,
                                      ),
                                      FxBox.h32,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "\$ ",
                                            style: TextStyle(fontFeatures: [
                                              FontFeature.superscripts()
                                            ], fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${priseList[index]}/ ",
                                            style: const TextStyle(
                                                fontSize: 30,
                                                color: ColorConst.textColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Text(
                                            "Per month",
                                            style: TextStyle(fontFeatures: [
                                              FontFeature.subscripts()
                                            ], fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      FxBox.h32,
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: FxButton(
                                          borderRadius: 4,
                                          color: ColorConst.primary,
                                          text: "Sign up Now",
                                          onPressed: () {},
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )))
                : Responsive.isWeb(context)
                    ? Wrap(
                        children: List.generate(
                            4,
                            (index) => SizedBox(
                                  //  height: MediaQuery.of(context).size.height * .53,
                                  width:
                                      MediaQuery.of(context).size.width * .20,
                                  child: Card(
                                    margin: const EdgeInsets.all(10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                iconList[index],
                                              ),
                                              const Spacer(),
                                              Column(
                                                children: [
                                                  Text(
                                                    "${headingList[index]}",
                                                    style: const TextStyle(
                                                        color: ColorConst
                                                            .textColor,
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const Text(
                                                    "Sed ut neque unde",
                                                    style: TextStyle(
                                                        color: ColorConst
                                                            .textColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          FxBox.h24,
                                          listTile(
                                            text: "Free Live Support",
                                            icons: Icons.check,
                                          ),
                                          listTile(
                                            text: "Unlimited User",
                                            icons: Icons.check,
                                          ),
                                          listTile(
                                            text: "No Time Tracking",
                                            icons: Icons.check,
                                          ),
                                          listTile(
                                            text: "Free Setup",
                                            icons: Icons.clear,
                                          ),
                                          FxBox.h32,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "\$ ",
                                                style: TextStyle(fontFeatures: [
                                                  FontFeature.superscripts()
                                                ], fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "${priseList[index]}/ ",
                                                style: const TextStyle(
                                                    fontSize: 30,
                                                    color: ColorConst.textColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                "Per month",
                                                style: TextStyle(fontFeatures: [
                                                  FontFeature.subscripts()
                                                ], fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          FxBox.h32,
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: FxButton(
                                              borderRadius: 4,
                                              color: ColorConst.primary,
                                              text: "Sign up Now",
                                              onPressed: () {},
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )))
                    : Wrap(
                        children: List.generate(
                            4,
                            (index) => SizedBox(
                                  //  height: MediaQuery.of(context).size.height * .53,
                                  width:
                                      MediaQuery.of(context).size.width * .40,
                                  child: Card(
                                    margin: const EdgeInsets.all(10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                iconList[index],
                                              ),
                                              const Spacer(),
                                              Column(
                                                children: [
                                                  Text(
                                                    "${headingList[index]}",
                                                    style: const TextStyle(
                                                        color: ColorConst
                                                            .textColor,
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const Text(
                                                    "Sed ut neque unde",
                                                    style: TextStyle(
                                                        color: ColorConst
                                                            .textColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          FxBox.h24,
                                          listTile(
                                            text: "Free Live Support",
                                            icons: Icons.check,
                                          ),
                                          listTile(
                                            text: "Unlimited User",
                                            icons: Icons.check,
                                          ),
                                          listTile(
                                            text: "No Time Tracking",
                                            icons: Icons.check,
                                          ),
                                          listTile(
                                            text: "Free Setup",
                                            icons: Icons.clear,
                                          ),
                                          FxBox.h32,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "\$ ",
                                                style: TextStyle(fontFeatures: [
                                                  FontFeature.superscripts()
                                                ], fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "${priseList[index]}/ ",
                                                style: const TextStyle(
                                                    fontSize: 30,
                                                    color: ColorConst.textColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                "Per month",
                                                style: TextStyle(fontFeatures: [
                                                  FontFeature.subscripts()
                                                ], fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          FxBox.h32,
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: FxButton(
                                              borderRadius: 4,
                                              color: ColorConst.primary,
                                              text: "Sign up Now",
                                              onPressed: () {},
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )))
          ],
        ),
      ),
    );
  }

  Widget listTile({String? text, IconData? icons}) {
    return ListTile(
      title: Text(
        "${text}",
        style: TextStyle(fontSize: 15),
      ),
      leading: Icon(icons, size: 19, color: ColorConst.primary),
    );
  }

}
