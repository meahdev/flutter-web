import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class LoginOne extends StatefulWidget {
  const LoginOne({Key? key}) : super(key: key);

  @override
  State<LoginOne> createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isChecked = false;

  double _getWidth() {
    if (MediaQuery.of(context).size.width <= 550) {
      return double.infinity;
    } else if (MediaQuery.of(context).size.width <= 750) {
      return (MediaQuery.of(context).size.width - 240);
    } else if (Responsive.isWeb(context)) {
      return ((MediaQuery.of(context).size.width) / 4);
    } else {
      return (MediaQuery.of(context).size.width / 2) - 46;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Column(
              children: [
                _headerView(),
                _bottomView(),
              ],
            ),
            _greenCircle(),
            _whiteCircle(),
            _logoView(),
          ],
        ),
        FxBox.h48,
        ConstantAuth.signUp(context),
        FxBox.h16,
        const CustomText(
          title: Strings.loginFooterText,
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
          textColor: ColorConst.lightFontColor,
        ),
      ],
    );
  }

  Widget _greenCircle() {
    return Positioned.fill(
      top: 88,
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

  Widget _whiteCircle() {
    return Positioned.fill(
      top: 86,
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

  Widget _logoView() {
    return Positioned.fill(
      top: 110,
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

  Widget _headerView() {
    return Container(
      width: _getWidth(),
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
            const CustomText(
              title: Strings.welcomeBack,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              textColor: ColorConst.white,
            ),
            FxBox.h6,
            CustomText(
              title: Strings.loginHeaderText,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textColor: ColorConst.white.withOpacity(0.5),
            )
          ],
        ),
      ),
    );
  }

  Widget _bottomView() {
    return Container(
      width: _getWidth(),
      decoration: const BoxDecoration(
        color: ColorConst.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4.0),
          bottomRight: Radius.circular(4.0),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConst.appbarLightBG,
            blurRadius: 0.2, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
            // offset: Offset(
            //   0.2,
            //   0.2,
            // ),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            FxBox.h28,
            _labelView(Strings.username),
            FxBox.h8,
            _usernameTextBoxWidget(),
            FxBox.h16,
            _labelView(Strings.password),
            FxBox.h8,
            _passwordTextBoxWidget(),
            FxBox.h12,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _rememberMeCheckBox(),
                _loginButton(),
              ],
            ),
            FxBox.h20,
            _forgotPasswordButton(),
          ],
        ),
      ),
    );
  }

  Widget _labelView(String label) {
    return CustomText(
      title: label,
      fontSize: 14,
      fontWeight: FontWeight.w800,
      textColor: ColorConst.lightFontColor,
    );
  }

  Widget _usernameTextBoxWidget() {
    return CustomTextField(
      hintText: Strings.enterUsername,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _usernameController,
    );
  }

  Widget _passwordTextBoxWidget() {
    return CustomTextField(
      obsecureText: true,
      hintText: Strings.enterPassword,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _passwordController,
    );
  }

  Widget _rememberMeCheckBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
          activeColor: ColorConst.primary,
          focusColor: ColorConst.primary,
        ),
        const CustomText(
          title: Strings.rememberMeLabel,
          textColor: ColorConst.lightFontColor,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }

  Widget _loginButton() {
    return FxButton(
      onPressed: () {},
      text: Strings.loginLabel,
      borderRadius: 4.0,
      height: 40,
      minWidth: 110,
      color: ColorConst.primary,
    );
  }

  Widget _forgotPasswordButton() {
    return GestureDetector(
      onTap: () {
        // on pressed
      },
      child: FxHover(
        builder: (isHover) {
          Color color = isHover ? ColorConst.primaryDark : ColorConst.primary;
          return Row(
            children: [
              Icon(
                Icons.lock,
                size: 14,
                color: color,
              ),
              FxBox.w4,
              CustomText(
                title: Strings.forgotPassword,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                textColor: color,
              ),
            ],
          );
        },
      ),
    );
    // return TextButton(
    //   onPressed: () {},
    //   style: ButtonStyle(foregroundColor:
    //       MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    //     if (states.contains(MaterialState.hovered)) {
    //       return ColorConst.primaryDark;
    //     }
    //     return ColorConst.primary;
    //   }), overlayColor:
    //       MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    //     if (states.contains(MaterialState.hovered)) return Colors.white;
    //     return Colors.white;
    //   })),
    //   child: Row(
    //     children: [
    //       const Icon(
    //         Icons.lock,
    //         size: 14,
    //       ),
    //       FxBox.w4,
    //       const CustomText(
    //         title: Strings.forgotPassword,
    //         fontSize: 14,
    //         fontWeight: FontWeight.w700,
    //       ),
    //     ],
    //   ),
    // );
  }
}
