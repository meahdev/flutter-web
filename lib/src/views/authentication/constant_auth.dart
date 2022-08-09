import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:flutter/material.dart';

class ConstantAuth {
  static Widget signUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(
          title: Strings.dontHaveAccount,
          textColor: ColorConst.lightFontColor,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        GestureDetector(
          onTap: () {
            // onpressed
          },
          child: const CustomText(
            title: Strings.signUpNow,
            fontSize: 14,
            textColor: ColorConst.primary,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
