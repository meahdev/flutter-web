import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/image.dart';
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
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                Images.loginBg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 420,
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
          Row(
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
                textColor: ColorConst.black,
              ),
            ],
          ),
          FxBox.h28,
          const Center(
            child: CustomText(
              title: Strings.freeRegister,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              textColor: ColorConst.lightFontColor,
            ),
          ),
          FxBox.h6,
          const Center(
            child: CustomText(
              title: Strings.registerHeaderText,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textColor: ColorConst.lightFontColor,
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
          ConstantAuth.login(context, true),
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
      color: ColorConst.primary,
    );
  }

  Widget _termsAndService() {
    return Center(
      child: RichText(
        textAlign: TextAlign.left,
        text: const TextSpan(
          style: TextStyle(
              height: 1.5,
              color: ColorConst.lightFontColor,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700),
          children: <TextSpan>[
            TextSpan(
              text: Strings.termsServiceText1,
            ),
            TextSpan(
              text: Strings.termsServiceText2,
              style: TextStyle(
                  color: ColorConst.primary,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700),
              // recognizer: TapGestureRecognizer()
              //   ..onTap = () {
              //     Constant.launchURL(ConstString.termsUrl);
              //   },
            ),
          ],
        ),
      ),
    );
  }
}
