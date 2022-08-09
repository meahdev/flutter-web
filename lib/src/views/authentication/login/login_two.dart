import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class LoginTwo extends StatefulWidget {
  const LoginTwo({Key? key}) : super(key: key);

  @override
  State<LoginTwo> createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Image.asset(
            Images.loginBg,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height,
            color: ColorConst.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _mainView(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _mainView() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            title: Strings.welcomeBack,
            fontSize: 18,
            fontWeight: FontWeight.w800,
            textColor: ColorConst.lightFontColor,
          ),
          FxBox.h6,
          const CustomText(
            title: Strings.loginHeaderText,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            textColor: ColorConst.lightFontColor,
          ),
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
          FxBox.h48,
          ConstantAuth.signUp(context),
          FxBox.h16,
        ],
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

  Widget _signUp() {
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
  }
}
