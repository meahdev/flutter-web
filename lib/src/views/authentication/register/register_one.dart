import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class RegisterOne extends StatefulWidget {
  const RegisterOne({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegisterOneState();
}

class _RegisterOneState extends State<RegisterOne> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisSize: MainAxisSize.min, children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 30),
                  ConstantAuth.headerView(
                    Strings.freeRegister,
                    Strings.registerHeaderText,
                    context,
                  ),
                  _bottomView(),
                ],
              ),
              ConstantAuth.greenCircle(),
              ConstantAuth.whiteCircle(),
              ConstantAuth.logoView(),
            ],
          ),
        ),
        FxBox.h48,
        ConstantAuth.login(
          context,
          false,
          Strings.alreayAccountExist,
          Strings.login,
        ),
        FxBox.h16,
        ConstantAuth.footerText(),
      ]),
    );
  }

  Widget _bottomView() {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: isDark ? ColorConst.darkContainer : ColorConst.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(4.0),
          bottomRight: Radius.circular(4.0),
        ),
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.transparent : ColorConst.appbarLightBG,
            blurRadius: 0.2, // soften the shadow
            spreadRadius: 0.2, //extend the shadow
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
          ],
        ),
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
            color:
                isDark ? ColorConst.darkFooterText : ColorConst.lightFontColor,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
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
