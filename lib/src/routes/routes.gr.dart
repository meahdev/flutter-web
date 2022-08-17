// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i26;
import 'package:flutter/material.dart' as _i27;

import '../views/authentication/lock_screen/lock_screen_one.dart' as _i8;
import '../views/authentication/lock_screen/lock_screen_two.dart' as _i9;
import '../views/authentication/login/login_one.dart' as _i2;
import '../views/authentication/login/login_two.dart' as _i3;
import '../views/authentication/recover_password/recover_password_one.dart'
    as _i6;
import '../views/authentication/recover_password/recover_password_two.dart'
    as _i7;
import '../views/authentication/register/register_one.dart' as _i4;
import '../views/authentication/register/register_two.dart' as _i5;
import '../views/badge/badge.dart' as _i14;
import '../views/buttons/button.dart' as _i12;
import '../views/extra_pages/coming_soon.dart' as _i17;
import '../views/extra_pages/directory.dart' as _i22;
import '../views/extra_pages/error_404.dart' as _i18;
import '../views/extra_pages/error_500.dart' as _i19;
import '../views/extra_pages/faqs.dart' as _i23;
import '../views/extra_pages/gallary.dart' as _i25;
import '../views/extra_pages/invoice.dart' as _i24;
import '../views/extra_pages/maintenance.dart' as _i20;
import '../views/extra_pages/pricing.dart' as _i21;
import '../views/extra_pages/timeline/timeline.dart' as _i16;
import '../views/icons/cupertino_icon.dart' as _i15;
import '../views/menu_bar.dart' as _i1;
import '../views/rating/rating.dart' as _i13;
import '../views/test.dart' as _i10;
import '../views/toast/toast.dart' as _i11;

class AppRouter extends _i26.RootStackRouter {
  AppRouter([_i27.GlobalKey<_i27.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i26.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    LoginOne.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginOne());
    },
    LoginTwo.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginTwo());
    },
    RegisterOne.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterOne());
    },
    RegisterTwo.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterTwo());
    },
    RecoverPasswordOne.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RecoverPasswordOne());
    },
    RecoverPasswordTwo.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RecoverPasswordTwo());
    },
    LockScreenOne.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LockScreenOne());
    },
    LockScreenTwo.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.LockScreenTwo());
    },
    TestWidget.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.TestWidget());
    },
    Toast.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Toast());
    },
    Button.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.Button());
    },
    Rating.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Rating());
    },
    Badge.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Badge());
    },
    CupertinoIcon.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.CupertinoIcon());
    },
    TimelineScreen.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.TimelineScreen());
    },
    ComingSoon.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.ComingSoon());
    },
    Error404.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.Error404());
    },
    Error500.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.Error500());
    },
    Maintenance.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.Maintenance());
    },
    Pricing.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.Pricing());
    },
    DirectoryRoute.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.DirectoryPage());
    },
    FAQs.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.FAQs());
    },
    Invoice.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.Invoice());
    },
    Gallary.name: (routeData) {
      return _i26.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.Gallary());
    }
  };

  @override
  List<_i26.RouteConfig> get routes => [
        _i26.RouteConfig(MenuBar.name, path: '/', children: [
          _i26.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'faqs',
              fullMatch: true),
          _i26.RouteConfig(TestWidget.name,
              path: 'dashboard', parent: MenuBar.name),
          _i26.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i26.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i26.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i26.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i26.RouteConfig(CupertinoIcon.name,
              path: 'cupertino-icon', parent: MenuBar.name),
          _i26.RouteConfig(TimelineScreen.name,
              path: 'timeline', parent: MenuBar.name),
          _i26.RouteConfig(ComingSoon.name,
              path: 'coming-soon', parent: MenuBar.name),
          _i26.RouteConfig(Error404.name,
              path: 'error-404', parent: MenuBar.name),
          _i26.RouteConfig(Error500.name,
              path: 'error-500', parent: MenuBar.name),
          _i26.RouteConfig(Maintenance.name,
              path: 'maintenance', parent: MenuBar.name),
          _i26.RouteConfig(Pricing.name, path: 'pricing', parent: MenuBar.name),
          _i26.RouteConfig(DirectoryRoute.name,
              path: 'directory', parent: MenuBar.name),
          _i26.RouteConfig(FAQs.name, path: 'faqs', parent: MenuBar.name),
          _i26.RouteConfig(Invoice.name, path: 'invoice', parent: MenuBar.name),
          _i26.RouteConfig(Gallary.name, path: 'gallary', parent: MenuBar.name)
        ]),
        _i26.RouteConfig(LoginOne.name, path: 'login-one'),
        _i26.RouteConfig(LoginTwo.name, path: 'login-two'),
        _i26.RouteConfig(RegisterOne.name, path: 'register-one'),
        _i26.RouteConfig(RegisterTwo.name, path: 'register-two'),
        _i26.RouteConfig(RecoverPasswordOne.name, path: 'recover-password-one'),
        _i26.RouteConfig(RecoverPasswordTwo.name, path: 'recover-password-two'),
        _i26.RouteConfig(LockScreenOne.name, path: 'lock-screen-one'),
        _i26.RouteConfig(LockScreenTwo.name, path: 'lock-screen-two')
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i26.PageRouteInfo<void> {
  const MenuBar({List<_i26.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.LoginOne]
class LoginOne extends _i26.PageRouteInfo<void> {
  const LoginOne() : super(LoginOne.name, path: 'login-one');

  static const String name = 'LoginOne';
}

/// generated route for
/// [_i3.LoginTwo]
class LoginTwo extends _i26.PageRouteInfo<void> {
  const LoginTwo() : super(LoginTwo.name, path: 'login-two');

  static const String name = 'LoginTwo';
}

/// generated route for
/// [_i4.RegisterOne]
class RegisterOne extends _i26.PageRouteInfo<void> {
  const RegisterOne() : super(RegisterOne.name, path: 'register-one');

  static const String name = 'RegisterOne';
}

/// generated route for
/// [_i5.RegisterTwo]
class RegisterTwo extends _i26.PageRouteInfo<void> {
  const RegisterTwo() : super(RegisterTwo.name, path: 'register-two');

  static const String name = 'RegisterTwo';
}

/// generated route for
/// [_i6.RecoverPasswordOne]
class RecoverPasswordOne extends _i26.PageRouteInfo<void> {
  const RecoverPasswordOne()
      : super(RecoverPasswordOne.name, path: 'recover-password-one');

  static const String name = 'RecoverPasswordOne';
}

/// generated route for
/// [_i7.RecoverPasswordTwo]
class RecoverPasswordTwo extends _i26.PageRouteInfo<void> {
  const RecoverPasswordTwo()
      : super(RecoverPasswordTwo.name, path: 'recover-password-two');

  static const String name = 'RecoverPasswordTwo';
}

/// generated route for
/// [_i8.LockScreenOne]
class LockScreenOne extends _i26.PageRouteInfo<void> {
  const LockScreenOne() : super(LockScreenOne.name, path: 'lock-screen-one');

  static const String name = 'LockScreenOne';
}

/// generated route for
/// [_i9.LockScreenTwo]
class LockScreenTwo extends _i26.PageRouteInfo<void> {
  const LockScreenTwo() : super(LockScreenTwo.name, path: 'lock-screen-two');

  static const String name = 'LockScreenTwo';
}

/// generated route for
/// [_i10.TestWidget]
class TestWidget extends _i26.PageRouteInfo<void> {
  const TestWidget() : super(TestWidget.name, path: 'dashboard');

  static const String name = 'TestWidget';
}

/// generated route for
/// [_i11.Toast]
class Toast extends _i26.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i12.Button]
class Button extends _i26.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i13.Rating]
class Rating extends _i26.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i14.Badge]
class Badge extends _i26.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i15.CupertinoIcon]
class CupertinoIcon extends _i26.PageRouteInfo<void> {
  const CupertinoIcon() : super(CupertinoIcon.name, path: 'cupertino-icon');

  static const String name = 'CupertinoIcon';
}

/// generated route for
/// [_i16.TimelineScreen]
class TimelineScreen extends _i26.PageRouteInfo<void> {
  const TimelineScreen() : super(TimelineScreen.name, path: 'timeline');

  static const String name = 'TimelineScreen';
}

/// generated route for
/// [_i17.ComingSoon]
class ComingSoon extends _i26.PageRouteInfo<void> {
  const ComingSoon() : super(ComingSoon.name, path: 'coming-soon');

  static const String name = 'ComingSoon';
}

/// generated route for
/// [_i18.Error404]
class Error404 extends _i26.PageRouteInfo<void> {
  const Error404() : super(Error404.name, path: 'error-404');

  static const String name = 'Error404';
}

/// generated route for
/// [_i19.Error500]
class Error500 extends _i26.PageRouteInfo<void> {
  const Error500() : super(Error500.name, path: 'error-500');

  static const String name = 'Error500';
}

/// generated route for
/// [_i20.Maintenance]
class Maintenance extends _i26.PageRouteInfo<void> {
  const Maintenance() : super(Maintenance.name, path: 'maintenance');

  static const String name = 'Maintenance';
}

/// generated route for
/// [_i21.Pricing]
class Pricing extends _i26.PageRouteInfo<void> {
  const Pricing() : super(Pricing.name, path: 'pricing');

  static const String name = 'Pricing';
}

/// generated route for
/// [_i22.DirectoryPage]
class DirectoryRoute extends _i26.PageRouteInfo<void> {
  const DirectoryRoute() : super(DirectoryRoute.name, path: 'directory');

  static const String name = 'DirectoryRoute';
}

/// generated route for
/// [_i23.FAQs]
class FAQs extends _i26.PageRouteInfo<void> {
  const FAQs() : super(FAQs.name, path: 'faqs');

  static const String name = 'FAQs';
}

/// generated route for
/// [_i24.Invoice]
class Invoice extends _i26.PageRouteInfo<void> {
  const Invoice() : super(Invoice.name, path: 'invoice');

  static const String name = 'Invoice';
}

/// generated route for
/// [_i25.Gallary]
class Gallary extends _i26.PageRouteInfo<void> {
  const Gallary() : super(Gallary.name, path: 'gallary');

  static const String name = 'Gallary';
}
