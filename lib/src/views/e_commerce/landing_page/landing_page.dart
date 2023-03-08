import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _header(),
          FxBox.h32,
          _tabWithLogin(),
        ],
      ),
    );
  }

  Widget _tabWithLogin() {
    return Row(
      children: [
        Expanded(child: _tabBar()),
        Expanded(child: _loginRegister()),
      ],
    );
  }

  Widget _loginRegister() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _textButton(onPressed: () {}, text: 'Login'),
        ConstText.lightText(text: '/'),
        _textButton(onPressed: () {}, text: 'Register'),
      ],
    );
  }

  Widget _tabBar() {
    return Row(
      children: [
        _textButton(onPressed: () {}, text: 'Home'),
        _textButton(onPressed: () {}, text: 'Blog'),
        _textButton(onPressed: () {}, text: 'Category'),
        _textButton(onPressed: () {}, text: 'Brand'),
        _textButton(onPressed: () {}, text: 'Offer'),
      ],
    );
  }

  Widget _textButton({
    required void Function()? onPressed,
    required String text,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: ConstText.lightText(
          text: text, color: isDark ? ColorConst.white : ColorConst.black),
    );
  }

  Widget _header() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 240,
          padding: const EdgeInsets.symmetric(horizontal: 61),
          color: ColorConst.transparent,
          child: Image.asset(
              isDark ? Images.oldlgDarkLogo : Images.oldlgLightLogo),
        ),
        if (!Responsive.isMobile(context)) ...[
          const Spacer(),
          _iconWithBadge(
              badgeText: '0', icon: Icons.compare_arrows, title: 'Compare'),
          FxBox.w12,
          _iconWithBadge(
              badgeText: '0',
              icon: Icons.favorite_outline_outlined,
              title: 'Favourite'),
          FxBox.w12,
          _iconWithBadge(
              badgeText: '0', icon: Icons.shopping_bag_outlined, title: 'Cart'),
        ],
      ],
    );
  }

  Widget _iconWithBadge({
    required String badgeText,
    required IconData icon,
    required String title,
  }) {
    return Row(
      children: [
        Badge(
          label: Text(badgeText),
          backgroundColor: ColorConst.black,
          child: Icon(
            icon,
            size: 26,
          ),
        ),
        FxBox.w6,
        CustomText(title: title),
      ],
    );
  }
}
