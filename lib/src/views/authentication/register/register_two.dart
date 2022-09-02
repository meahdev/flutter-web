import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class RegisterTwo extends StatefulWidget {
  const RegisterTwo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegisterTwoState();
}

class _RegisterTwoState extends State<RegisterTwo> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: Stack(
          children: [
            ConstantAuth.homeBackground(context),
            Container(
              width: 420,
              height: MediaQuery.of(context).size.height,
              color: isDark ? ColorConst.darkContainer : ColorConst.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _mainView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mainView() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstantAuth.logoWithAppName(
            isDark ? ColorConst.white : ColorConst.black,
          ),
          FxBox.h28,
          Center(
            child: CustomText(
              title: Strings.freeRegister,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              textColor: isDark
                  ? ColorConst.darkFooterText
                  : ColorConst.lightFontColor,
            ),
          ),
          FxBox.h6,
          Center(
            child: CustomText(
              title: Strings.registerHeaderText,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textColor: isDark
                  ? ColorConst.darkFooterText
                  : ColorConst.lightFontColor,
            ),
          ),
          FxBox.h28,
          ConstantAuth.labelView(Strings.emailText),
          FxBox.h8,
          _emailTextBoxWidget(),
          FxBox.h16,
          ConstantAuth.labelView(Strings.username),
          FxBox.h8,
          _usernameTextBoxWidget(),
          FxBox.h16,
          ConstantAuth.labelView(Strings.password),
          FxBox.h8,
          _passwordTextBoxWidget(),
          FxBox.h12,
          Align(alignment: Alignment.centerRight, child: _registerButton()),
          FxBox.h36,
          _termsAndService(),
          FxBox.h16,
          FxBox.h52,
          ConstantAuth.login(
            context,
            true,
            Strings.alreayAccountExist,
            Strings.login,
          ),
          FxBox.h16,
          ConstantAuth.footerText(),
        ],
      ),
    );
  }

  Widget _emailTextBoxWidget() {
    return CustomTextField(
      hintText: Strings.enteremail,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _emailController,
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

  Widget _registerButton() {
    return FxButton(
      onPressed: () {},
      text: Strings.register,
      borderRadius: 4.0,
      height: 40,
      minWidth: 110,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _termsAndService() {
    return Center(
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          style: TextStyle(
              height: 1.5,
              color: isDark
                  ? ColorConst.darkFooterText
                  : ColorConst.lightFontColor,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700),
          children: [
            const TextSpan(
              text: Strings.termsServiceText1,
            ),
            TextSpan(
              text: Strings.termsServiceText2,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
