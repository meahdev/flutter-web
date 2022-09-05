import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/checkbox/checkbox_bloc/checkbox_bloc.dart';
import 'package:admin_dashboard/src/routes/routes.gr.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class LoginTwo extends StatefulWidget {
  const LoginTwo({Key? key}) : super(key: key);

  @override
  State<LoginTwo> createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final CheckboxBloc _checkboxBloc = CheckboxBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              title: Strings.welcomeBack,
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
              title: Strings.loginHeaderText,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textColor: isDark
                  ? ColorConst.darkFooterText
                  : ColorConst.lightFontColor,
            ),
          ),
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
          FxBox.h52,
          ConstantAuth.signUp(
              context, true, Strings.dontHaveAccount, Strings.signUpNow),
          FxBox.h16,
          ConstantAuth.footerText(),
        ],
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
        CustomText(
          title: Strings.rememberMeLabel,
          textColor:
              isDark ? ColorConst.darkFooterText : ColorConst.lightFontColor,
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
      color: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _forgotPasswordButton() {
    return GestureDetector(
      onTap: () {
        context.router.push(const RecoverPasswordTwo());
      },
      child: FxHover(
        builder: (isHover) {
          Color color = isHover
              ? ColorConst.primaryDark
              : Theme.of(context).colorScheme.primary;
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
