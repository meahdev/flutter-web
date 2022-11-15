import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class LockScreenTwo extends StatefulWidget {
  const LockScreenTwo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LockScreenTwoState();
}

class _LockScreenTwoState extends State<LockScreenTwo> {
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectionArea(
        child: Stack(
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
              title: Strings.locked,
              fontSize: 19,
              fontWeight: FontWeight.w800,
              textColor: isDark
                  ? ColorConst.darkFooterText
                  : ColorConst.lightFontColor,
            ),
          ),
          FxBox.h6,
          Center(
            child: CustomText(
              title: Strings.lockedDescription,
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: isDark
                  ? ColorConst.darkFooterText
                  : ColorConst.lightFontColor,
            ),
          ),
          FxBox.h28,
          _profileImageView(),
          FxBox.h8,
          ConstantAuth.labelView(Strings.password),
          FxBox.h8,
          _passwordTextBoxWidget(),
          FxBox.h16,
          Align(alignment: Alignment.topRight, child: _unLockButton()),
          FxBox.h4,
          FxBox.h60,
          ConstantAuth.login(
            context,
            true,
            Strings.notYouReturn,
            Strings.signIn,
          ),
          FxBox.h16,
          ConstantAuth.footerText(),
        ],
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
