import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class LockScreenOne extends StatefulWidget {
  const LockScreenOne({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LockScreenOneState();
}

class _LockScreenOneState extends State<LockScreenOne> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectionArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      ConstantAuth.headerView(
                        Strings.locked,
                        Strings.lockedDescription,
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
                context, false, Strings.notYouReturn, Strings.signIn),
            FxBox.h16,
            ConstantAuth.footerText(),
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
            FxBox.h28,
            _profileImageView(),
            FxBox.h8,
            ConstantAuth.labelView(Strings.password),
            FxBox.h8,
            _passwordTextBoxWidget(),
            FxBox.h16,
            Align(alignment: Alignment.topRight, child: _unLockButton()),
            FxBox.h4,
          ],
        ),
      ),
    );
  }

  Widget _profileImageView() {
    return Center(
      child: Column(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Images.loginBg),
              ),
              border: Border.all(
                width: 5.0,
                color: ColorConst.appbarLightBG,
              ),
            ),
          ),
          FxBox.h16,
          CustomText(
            title: 'Robert Smith',
            fontSize: 17,
            fontWeight: FontWeight.w800,
            textColor:
                isDark ? ColorConst.darkFooterText : ColorConst.lightFontColor,
          )
        ],
      ),
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

  Widget _unLockButton() {
    return FxButton(
      onPressed: () {},
      text: Strings.unLock,
      borderRadius: 4.0,
      height: 40,
      minWidth: 110,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
