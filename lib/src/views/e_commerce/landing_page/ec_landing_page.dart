import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/utils/routes.dart';
import 'package:admin_dashboard/src/views/e_commerce/landing_page/footer_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';
import 'package:admin_dashboard/src/routes/routes.gr.dart';

class ECLandingPage extends StatefulWidget {
  const ECLandingPage({super.key});

  @override
  State<ECLandingPage> createState() => _ECLandingPageState();
}

class _ECLandingPageState extends State<ECLandingPage> {
  final List<PageRouteInfo<dynamic>> _routes = const [
    BlogScreen(),
  ];

  final ValueNotifier<TextDirection> _layout =
      ValueNotifier<TextDirection>(TextDirection.ltr);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextDirection>(
        valueListenable: _layout,
        builder: (context, value, _) {
          return Directionality(
            textDirection: value,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _header(),
                  FxBox.h32,
                  _tabWithLogin(),
                  FxBox.h32,
                  getRouteWidget(autoTabRouter!.activeIndex),
                  FxBox.h32,
                  _headerOffooter(),
                  const FooterPage(),
                ],
              ),
            ),
          );
        });
    // AutoTabsRouter(
    //     routes: _routes,
    //     homeIndex: 0,
    //     builder: (context, child, animation) {
    //       final TabsRouter ecTabRouter = AutoTabsRouter.of(context);

    //       return ValueListenableBuilder<TextDirection>(
    //           valueListenable: _layout,
    //           builder: (context, value, _) {
    //             return Directionality(
    //               textDirection: value,
    //               child: Container(
    //                 padding: const EdgeInsets.all(12.0),
    //                 child: Column(
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: [
    //                     _header(),
    //                     FxBox.h32,
    //                     _tabWithLogin(),
    //                     FxBox.h32,
    //                     getECRouteWidget(ecTabRouter.activeIndex),
    //                     _headerOffooter(),
    //                     const FooterPage(),
    //                   ],
    //                 ),
    //               ),
    //             );
    //           });
    //     });
  }

  Widget _headerOffooter() {
    return Container(
      constraints: const BoxConstraints(minHeight: 120),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: isxl(context) || islg(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _vdivider(),
                _iconWithText(
                  iconData: Icons.file_copy,
                  iconString: 'Terms & Conditions',
                ),
                _vdivider(),
                _iconWithText(
                  iconData: Icons.policy,
                  iconString: 'Privacy Policy',
                ),
                _vdivider(),
                _iconWithText(
                  iconData: Icons.delivery_dining,
                  iconString: 'Delivery Policy',
                ),
                _vdivider(),
                _iconWithText(
                  iconData: Icons.cancel_presentation,
                  iconString: 'Cancellation Policy',
                ),
                _vdivider(),
              ],
            )
          : Responsive.isTablet(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _vdivider(),
                    Column(
                      children: [
                        _iconWithText(
                          iconData: Icons.file_copy,
                          iconString: 'Terms & Conditions',
                        ),
                        FxBox.h20,
                        _iconWithText(
                          iconData: Icons.policy,
                          iconString: 'Privacy Policy',
                        ),
                      ],
                    ),
                    _vdivider(),
                    Column(
                      children: [
                        _iconWithText(
                          iconData: Icons.delivery_dining,
                          iconString: 'Delivery Policy',
                        ),
                        FxBox.h20,
                        _iconWithText(
                          iconData: Icons.cancel_presentation,
                          iconString: 'Cancellation Policy',
                        ),
                      ],
                    ),
                    _vdivider(),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FxBox.h20,
                    _iconWithText(
                      iconData: Icons.file_copy,
                      iconString: 'Terms & Conditions',
                    ),
                    FxBox.h20,
                    _iconWithText(
                      iconData: Icons.policy,
                      iconString: 'Privacy Policy',
                    ),
                    FxBox.h20,
                    _iconWithText(
                      iconData: Icons.delivery_dining,
                      iconString: 'Delivery Policy',
                    ),
                    FxBox.h20,
                    _iconWithText(
                      iconData: Icons.cancel_presentation,
                      iconString: 'Cancellation Policy',
                    ),
                    FxBox.h20,
                  ],
                ),
    );
  }

  Widget _vdivider() {
    return Container(
      constraints: const BoxConstraints(maxHeight: 120),
      child: const VerticalDivider(),
    );
  }

  Widget _iconWithText({
    required IconData iconData,
    required String iconString,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData),
        ConstText.lightText(
          text: iconString,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }

  Widget _tabWithLogin() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: _loginRegister(),
                ),
                _tabBar(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _tabBar(),
                _loginRegister(),
              ],
            ),
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
        FxBox.w10,
        _textButton(onPressed: () {}, text: 'Blog'),
        FxBox.w10,
        _textButton(onPressed: () {}, text: 'Category'),
        FxBox.w10,
        _textButton(onPressed: () {}, text: 'Brand'),
        FxBox.w10,
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
        text: text,
        color: isDark ? ColorConst.white : ColorConst.black,
      ),
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
