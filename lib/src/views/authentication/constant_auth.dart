import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class ConstantAuth {
  static Widget signUp(
      BuildContext context, bool isScreen, String title, String subTitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: title,
          textColor: ColorConst.lightFontColor,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        GestureDetector(
          onTap: () {
            if (isScreen) {
              context.router.push(const RegisterTwo());
            } else {
              context.router.push(const RegisterOne());
            }
          },
          child: CustomText(
            title: subTitle,
            fontSize: 14,
            textColor: ColorConst.primary,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  static Widget footerText() {
    return const CustomText(
      title: Strings.loginFooterText,
      fontSize: 13.0,
      fontWeight: FontWeight.w700,
      textColor: ColorConst.lightFontColor,
    );
  }

  static Widget labelView(String label) {
    return CustomText(
      title: label,
      fontSize: 14,
      fontWeight: FontWeight.w800,
      textColor: ColorConst.lightFontColor,
    );
  }

  static Widget greenCircle() {
    return Positioned.fill(
      top: 187,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: ColorConst.darkGreen,
          ),
        ],
      ),
    );
  }

  static Widget whiteCircle() {
    return Positioned.fill(
      top: 185,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 35,
            backgroundColor: ColorConst.white,
          ),
        ],
      ),
    );
  }

  static Widget logoView() {
    return Positioned.fill(
      top: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Images.logosm,
            height: 22,
            width: 30.8,
          ),
        ],
      ),
    );
  }

  static Widget headerView(String title, String subTitle) {
    return Container(
      width: 400,
      margin: const EdgeInsets.only(top: 60),
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      decoration: const BoxDecoration(
        color: ColorConst.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.0),
          topRight: Radius.circular(4.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              title: title,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              textColor: ColorConst.white,
            ),
            FxBox.h6,
            CustomText(
              title: subTitle,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textColor: ColorConst.white.withOpacity(0.5),
            )
          ],
        ),
      ),
    );
  }

  static Widget login(
      BuildContext context, bool isScreen, String title, String subTitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: title,
          textColor: ColorConst.lightFontColor,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        GestureDetector(
          onTap: () {
            if (isScreen) {
              context.router.push(const LoginTwo());
            } else {
              context.router.push(const LoginOne());
            }
          },
          child: CustomText(
            title: subTitle,
            fontSize: 14,
            textColor: ColorConst.primary,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  static Widget homeIconView(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, right: 15.0),
        child: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: const Icon(Icons.home),
        ),
      ),
    );
  }

  static Widget homeBackground(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          Images.loginBg,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget logoWithAppName(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 30,
          child: Image.asset(
            Images.logosm,
            fit: BoxFit.cover,
          ),
        ),
        FxBox.w4,
        CustomText(
            title: Strings.siddhatva.toUpperCase(),
            fontSize: 24,
            fontWeight: FontWeight.w600,
            textColor: color),
      ],
    );
  }
}
