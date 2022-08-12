import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/checkbox/checkbox_bloc/checkbox_bloc.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/custom_text_field.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class LoginTwo extends StatefulWidget {
  const LoginTwo({Key? key}) : super(key: key);

  @override
  State<LoginTwo> createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final CheckboxBloc _checkboxBloc = CheckboxBloc();

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
              title: Strings.welcomeBack,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              textColor: ColorConst.lightFontColor,
            ),
          ),
          FxBox.h6,
          const Center(
            child: CustomText(
              title: Strings.loginHeaderText,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textColor: ColorConst.lightFontColor,
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
