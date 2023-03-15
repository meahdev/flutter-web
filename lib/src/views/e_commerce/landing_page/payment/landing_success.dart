import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class LandingSuccessScreen extends StatefulWidget {
  const LandingSuccessScreen({super.key});

  @override
  State<LandingSuccessScreen> createState() => _LandingSuccessScreenState();
}

class _LandingSuccessScreenState extends State<LandingSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: SizedBox.shrink()),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FxBox.h(100),
              _dailog(),
              FxBox.h(100),
            ],
          ),
        ),
        const Expanded(flex: 2, child: SizedBox.shrink()),
      ],
    );
  }

  Widget _dailog() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: _successBox(),
      ),
    );
  }

  Widget _successBox() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgIcon(
            icon: IconlyBroken.verify,
            size: 120,
            color: ColorConst.successDark,
          ),
          FxBox.h20,
          const CustomText(
            textAlign: TextAlign.center,
            title:
                'Lorem ipsum is a placeholder text commonly used to demonstrate the visual'
                'form of a document or a typeface without relying on meaningful content.',
          ),
          FxBox.h20,
          FxButton(
            color: ColorConst.primaryDark,
            onPressed: () {
              autoecTabRouter!.setActiveIndex(0);
            },
            text: 'Go To Home',
          ),
        ],
      ),
    );
  }
}
