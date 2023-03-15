import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/checkbox/checkbox_bloc/checkbox_bloc.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/authentication/constant_auth.dart';
import 'package:admin_dashboard/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterx/flutterx.dart';

class ERegister extends StatefulWidget {
  const ERegister({super.key});

  @override
  State<ERegister> createState() => _ERegisterState();
}

class _ERegisterState extends State<ERegister> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final CheckboxBloc _checkboxBloc = CheckboxBloc();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SelectionArea(
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  Images.authBG,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FxBox.h20,
                      Center(
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 460,
                          ),
                          padding: Responsive.isMobile(context)
                              ? const EdgeInsets.all(32)
                              : const EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            color: isDark ? ColorConst.black : ColorConst.white,
                            border: Border.all(
                              color:
                                  isDark ? ColorConst.black : ColorConst.white,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: _logoView(),
                              ),
                              FxBox.h16,
                              CustomText(
                                title: Strings.contactInfo,
                                fontSize: 28,
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.w700,
                                textColor: isDark
                                    ? ColorConst.white
                                    : ColorConst.black,
                              ),
                              FxBox.h6,
                              _bottomView(),
                            ],
                          ),
                        ),
                      ),
                      FxBox.h20,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _logoView() {
    return SvgPicture.asset(IconlyBroken.adminKit);
  }

  Widget _bottomView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FxBox.h28,
        ConstantAuth.labelView(Strings.phonestr),
        FxBox.h8,
        _phoneTextBoxWidget(),
        FxBox.h16,
        ConstantAuth.labelView(Strings.emailstr),
        FxBox.h8,
        _emailTextBoxWidget(),
        FxBox.h16,
        ConstantAuth.labelView(Strings.userStr),
        FxBox.h8,
        _usernameTextBoxWidget(),
        FxBox.h16,
        ConstantAuth.labelView(Strings.password),
        FxBox.h8,
        _passwordTextBoxWidget(),
        FxBox.h8,
        _agreeterms(),
        FxBox.h16,
        _registerButton(),
        FxBox.h20,
        _serviceText(),
      ],
    );
  }

  Widget _emailTextBoxWidget() {
    return CustomTextField(
      hintText: Strings.enterEmail,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _emailController,
    );
  }

  Widget _usernameTextBoxWidget() {
    return CustomTextField(
      hintText: Strings.enterUser,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _usernameController,
    );
  }

  Widget _phoneTextBoxWidget() {
    return CustomTextField(
      hintText: Strings.enterPhone,
      onChanged: (String value) {},
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _phoneController,
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

  Widget _agreeterms() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
          title: Strings.termsServiceText3,
          textColor: isDark ? ColorConst.white : ColorConst.lightFontColor,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }

  Future<void> _rememberMeAction(bool isChecked) async {
    _checkboxBloc.add(CheckboxEvent.started(isChecked: isChecked));
  }

  Widget _registerButton() {
    return FxButton(
      onPressed: () {},
      text: Strings.register,
      borderRadius: 8.0,
      height: 40,
      minWidth: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _serviceText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomText(
          title: Strings.privacy,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          textColor: isDark ? ColorConst.white : ColorConst.black,
        ),
        CustomText(
          title: Strings.terms,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          textColor: isDark ? ColorConst.white : ColorConst.black,
        ),
        CustomText(
          title: Strings.sarvadhi2022,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          textColor: isDark ? ColorConst.white : ColorConst.black,
        ),
      ],
    );
  }
}