import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/checkbox/checkbox_bloc/checkbox_bloc.dart';
import 'package:admin_dashboard/src/routes/routes.gr.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class LoginOne extends StatefulWidget {
  const LoginOne({Key? key}) : super(key: key);

  @override
  State<LoginOne> createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final CheckboxBloc _checkboxBloc = CheckboxBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Stack(
              children: [
                Column(
                  children: [
                    (Responsive.isWeb(context))
                        ? ConstantAuth.homeIconView(context)
                        : const SizedBox(height: 30),
                    ConstantAuth.headerView(
                        Strings.welcomeBack, Strings.loginHeaderText),
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
          ConstantAuth.signUp(
              context, false, Strings.dontHaveAccount, Strings.signUpNow),
          FxBox.h16,
          ConstantAuth.footerText(),
        ],
      ),
    );
  }

  Widget _bottomView() {
    return Container(
      width: 400,
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
            // offset: Offset(9
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
            ConstantAuth.labelView(Strings.username),
            FxBox.h8,
            _usernameTextBoxWidget(),
            FxBox.h16,
            ConstantAuth.labelView(Strings.password),
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
        BlocProvider(
          create: (context) => _checkboxBloc,
          child: BlocBuilder<CheckboxBloc, CheckboxState>(
            builder: (context, state) {
              return state.when(
                success: (isChecked) {
                  return Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      _rememberMeAction(value!);
                    },
                    activeColor: ColorConst.primary,
                    focusColor: ColorConst.primary,
                  );
                },
              );
            },
          ),
        ),
        const CustomText(
          title: Strings.rememberMeLabel,
          textColor: ColorConst.lightFontColor,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }

  Future<void> _rememberMeAction(bool isChecked) async {
    _checkboxBloc.add(CheckboxEvent.started(isChecked: isChecked));
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
        context.router.push(const RecoverPasswordOne());
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
