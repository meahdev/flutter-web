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
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;

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
import '../views/dashboard/dashboard.dart' as _i10;
import '../views/email_templates/alert_email.dart' as _i18;
import '../views/email_templates/basic_email.dart' as _i17;
import '../views/email_templates/billing_email.dart' as _i19;
import '../views/menu_bar.dart' as _i1;
import '../views/ui_elements/alert/alert_dialog.dart' as _i15;
import '../views/ui_elements/badge/badge.dart' as _i14;
import '../views/ui_elements/buttons/button.dart' as _i12;
import '../views/ui_elements/loader/loader.dart' as _i20;
import '../views/ui_elements/modal/modal.dart' as _i16;
import '../views/ui_elements/rating/rating.dart' as _i13;
import '../views/ui_elements/toast/toast.dart' as _i11;

class AppRouter extends _i21.RootStackRouter {
  AppRouter([_i22.GlobalKey<_i22.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    LoginOne.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginOne());
    },
    LoginTwo.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginTwo());
    },
    RegisterOne.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterOne());
    },
    RegisterTwo.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterTwo());
    },
    RecoverPasswordOne.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RecoverPasswordOne());
    },
    RecoverPasswordTwo.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RecoverPasswordTwo());
    },
    LockScreenOne.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LockScreenOne());
    },
    LockScreenTwo.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.LockScreenTwo());
    },
    Dashboard.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Dashboard());
    },
    Toast.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Toast());
    },
    Button.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.Button());
    },
    Rating.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Rating());
    },
    Badge.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Badge());
    },
    AlertDialogBox.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.AlertDialogBox());
    },
    Modal.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.Modal());
    },
    BasicEmail.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.BasicEmail());
    },
    AlertEmail.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.AlertEmail());
    },
    BillingEmail.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.BillingEmail());
    },
    Loaders.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.Loaders());
    }
  };

  @override
  List<_i21.RouteConfig> get routes => [
        _i21.RouteConfig(MenuBar.name, path: '/', children: [
          _i21.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'loaders',
              fullMatch: true),
          _i21.RouteConfig(Dashboard.name,
              path: 'dashboard', parent: MenuBar.name),
          _i21.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i21.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i21.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i21.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i21.RouteConfig(AlertDialogBox.name,
              path: 'alert-dialog', parent: MenuBar.name),
          _i21.RouteConfig(Modal.name, path: 'modal', parent: MenuBar.name),
          _i21.RouteConfig(BasicEmail.name,
              path: 'basic-action-email', parent: MenuBar.name),
          _i21.RouteConfig(AlertEmail.name,
              path: 'alert-email', parent: MenuBar.name),
          _i21.RouteConfig(BillingEmail.name,
              path: 'billing-model', parent: MenuBar.name),
          _i21.RouteConfig(Loaders.name, path: 'loaders', parent: MenuBar.name)
        ]),
        _i21.RouteConfig(LoginOne.name, path: '/login-one'),
        _i21.RouteConfig(LoginTwo.name, path: '/login-two'),
        _i21.RouteConfig(RegisterOne.name, path: '/register-one'),
        _i21.RouteConfig(RegisterTwo.name, path: '/register-two'),
        _i21.RouteConfig(RecoverPasswordOne.name, path: '/recover-password'),
        _i21.RouteConfig(RecoverPasswordTwo.name,
            path: '/recover-password-two'),
        _i21.RouteConfig(LockScreenOne.name, path: '/lock-screen-one'),
        _i21.RouteConfig(LockScreenTwo.name, path: '/lock-screen-two')
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i21.PageRouteInfo<void> {
  const MenuBar({List<_i21.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.LoginOne]
class LoginOne extends _i21.PageRouteInfo<void> {
  const LoginOne() : super(LoginOne.name, path: '/login-one');

  static const String name = 'LoginOne';
}

/// generated route for
/// [_i3.LoginTwo]
class LoginTwo extends _i21.PageRouteInfo<void> {
  const LoginTwo() : super(LoginTwo.name, path: '/login-two');

  static const String name = 'LoginTwo';
}

/// generated route for
/// [_i4.RegisterOne]
class RegisterOne extends _i21.PageRouteInfo<void> {
  const RegisterOne() : super(RegisterOne.name, path: '/register-one');

  static const String name = 'RegisterOne';
}

/// generated route for
/// [_i5.RegisterTwo]
class RegisterTwo extends _i21.PageRouteInfo<void> {
  const RegisterTwo() : super(RegisterTwo.name, path: '/register-two');

  static const String name = 'RegisterTwo';
}

/// generated route for
/// [_i6.RecoverPasswordOne]
class RecoverPasswordOne extends _i21.PageRouteInfo<void> {
  const RecoverPasswordOne()
      : super(RecoverPasswordOne.name, path: '/recover-password');

  static const String name = 'RecoverPasswordOne';
}

/// generated route for
/// [_i7.RecoverPasswordTwo]
class RecoverPasswordTwo extends _i21.PageRouteInfo<void> {
  const RecoverPasswordTwo()
      : super(RecoverPasswordTwo.name, path: '/recover-password-two');

  static const String name = 'RecoverPasswordTwo';
}

/// generated route for
/// [_i8.LockScreenOne]
class LockScreenOne extends _i21.PageRouteInfo<void> {
  const LockScreenOne() : super(LockScreenOne.name, path: '/lock-screen-one');

  static const String name = 'LockScreenOne';
}

/// generated route for
/// [_i9.LockScreenTwo]
class LockScreenTwo extends _i21.PageRouteInfo<void> {
  const LockScreenTwo() : super(LockScreenTwo.name, path: '/lock-screen-two');

  static const String name = 'LockScreenTwo';
}

/// generated route for
/// [_i10.Dashboard]
class Dashboard extends _i21.PageRouteInfo<void> {
  const Dashboard() : super(Dashboard.name, path: 'dashboard');

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i11.Toast]
class Toast extends _i21.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i12.Button]
class Button extends _i21.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i13.Rating]
class Rating extends _i21.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i14.Badge]
class Badge extends _i21.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i15.AlertDialogBox]
class AlertDialogBox extends _i21.PageRouteInfo<void> {
  const AlertDialogBox() : super(AlertDialogBox.name, path: 'alert-dialog');

  static const String name = 'AlertDialogBox';
}

/// generated route for
/// [_i16.Modal]
class Modal extends _i21.PageRouteInfo<void> {
  const Modal() : super(Modal.name, path: 'modal');

  static const String name = 'Modal';
}

/// generated route for
/// [_i17.BasicEmail]
class BasicEmail extends _i21.PageRouteInfo<void> {
  const BasicEmail() : super(BasicEmail.name, path: 'basic-action-email');

  static const String name = 'BasicEmail';
}

/// generated route for
/// [_i18.AlertEmail]
class AlertEmail extends _i21.PageRouteInfo<void> {
  const AlertEmail() : super(AlertEmail.name, path: 'alert-email');

  static const String name = 'AlertEmail';
}

/// generated route for
/// [_i19.BillingEmail]
class BillingEmail extends _i21.PageRouteInfo<void> {
  const BillingEmail() : super(BillingEmail.name, path: 'billing-model');

  static const String name = 'BillingEmail';
}

/// generated route for
/// [_i20.Loaders]
class Loaders extends _i21.PageRouteInfo<void> {
  const Loaders() : super(Loaders.name, path: 'loaders');

  static const String name = 'Loaders';
}
