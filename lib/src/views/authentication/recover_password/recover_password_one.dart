import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class RecoverPasswordOne extends StatefulWidget {
  const RecoverPasswordOne({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecoverPasswordOneState();
}

class _RecoverPasswordOneState extends State<RecoverPasswordOne> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      _headerView(Strings.resetPassword),
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
                context, false, Strings.rememberIt, Strings.signInHere),
            FxBox.h16,
            ConstantAuth.footerText(),
          ],
        ),
      ),
    );
  }

  Widget _headerView(String title) {
    return Container(
      width: 400,
      margin: const EdgeInsets.only(top: 70),
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      decoration: const BoxDecoration(
        color: ColorConst.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.0),
          topRight: Radius.circular(4.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              title: title,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              textColor: ColorConst.white,
            ),
          ],
        ),
      ),
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
            FxBox.h40,
            _emailInstruction(),
            FxBox.h16,
            ConstantAuth.labelView(Strings.emailText),
            FxBox.h8,
            _emailTextBoxWidget(),
            FxBox.h16,
            Align(alignment: Alignment.centerRight, child: _resetButton()),
            FxBox.h12,
          ],
        ),
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
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
