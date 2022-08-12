import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class RecoverPasswordTwo extends StatefulWidget {
  const RecoverPasswordTwo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecoverPasswordTwoState();
}

class _RecoverPasswordTwoState extends State<RecoverPasswordTwo> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ConstantAuth.homeBackground(context),
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
      ]),
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
          ConstantAuth.logoWithAppName(ColorConst.black),
          FxBox.h32,
          const Center(
            child: CustomText(
              title: Strings.resetPassword,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              textColor: ColorConst.lightFontColor,
            ),
          ),
          FxBox.h6,
          _emailInstruction(),
          FxBox.h8,
          ConstantAuth.labelView(Strings.emailText),
          FxBox.h8,
          _emailTextBoxWidget(),
          FxBox.h12,
          Align(alignment: Alignment.centerRight, child: _resetButton()),
          FxBox.h60,
          ConstantAuth.login(
              context, true, Strings.rememberIt, Strings.signInHere),
          FxBox.h16,
          ConstantAuth.footerText(),
        ],
      ),
    );
  }

  Widget _emailInstruction() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 65,
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorConst.backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border.all(
          color: ColorConst.borderColor,
          width: 1,
        ),
      ),
      child: CustomText(
        title: Strings.emailInstructions,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        textColor: ColorConst.darkGreen2,
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

  Widget _resetButton() {
    return FxButton(
      onPressed: () {},
      text: Strings.reset,
      borderRadius: 4.0,
      height: 40,
      minWidth: 110,
      color: ColorConst.primary,
    );
  }
}
