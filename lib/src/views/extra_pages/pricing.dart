import 'dart:ui';

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
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
  final List<String> headingList = [
    "Starter",
    "Professional",
    'Enterprise',
    "Unlimited"
  ];
  final List<String> priceList = ["19", "29", "39", "49"];

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Wrap(
            runSpacing: 20.0,
            children: List.generate(
              4,
              (index) => _pricingCard(
                iconList[index],
                headingList[index],
                priceList[index],
              ),
            ),
          )
        : Responsive.isWeb(context)
            ? Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: List.generate(
                  4,
                  (index) => _pricingCard(
                    iconList[index],
                    headingList[index],
                    priceList[index],
                  ),
                ),
              )
            : Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: List.generate(
                  4,
                  (index) => _pricingCard(
                    iconList[index],
                    headingList[index],
                    priceList[index],
                  ),
                ),
              );
  }

  Widget _pricingCard(IconData icon, String title, String price) {
    return SizedBox(
      width: Responsive.isMobile(context)
          ? MediaQuery.of(context).size.width
          : Responsive.isWeb(context)
              ? MediaQuery.of(context).size.width < 1300
                  ? (MediaQuery.of(context).size.width - 308) / 2
                  : (MediaQuery.of(context).size.width - 348) / 4
              : MediaQuery.of(context).size.width / 2 - 34,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: isDark
                              ? ColorConst.darkFontColor
                              : ColorConst.textColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Sed ut neque unde",
                        style: TextStyle(
                          color: isDark
                              ? ColorConst.darkFontColor
                              : ColorConst.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              FxBox.h48,
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
              FxBox.h48,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "\$ ",
                    style: TextStyle(
                      fontFeatures: [FontFeature.superscripts()],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$price/ ",
                    style: TextStyle(
                      fontSize: 30,
                      color: isDark
                          ? ColorConst.darkFontColor
                          : ColorConst.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Per month",
                    style: TextStyle(
                      fontFeatures: [FontFeature.subscripts()],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              FxBox.h48,
              FxButton(
                borderRadius: 4,
                text: "Sign up Now",
                onPressed: () {},
                fullWidth: true,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget listTile({String? text, IconData? icons}) {
    return ListTile(
      title: Text(
        "$text",
        style: const TextStyle(fontSize: 15),
      ),
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.zero,
      leading: Icon(icons, size: 19, color: ColorConst.primary),
    );
  }
}