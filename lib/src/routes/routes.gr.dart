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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../views/alert/alert_dialog.dart' as _i12;
import '../views/authentication/login/login_one.dart' as _i2;
import '../views/authentication/login/login_two.dart' as _i3;
import '../views/authentication/recover_password/recover_password_one.dart'
    as _i6;
import '../views/authentication/register/register_one.dart' as _i4;
import '../views/authentication/register/register_two.dart' as _i5;
import '../views/badge/badge.dart' as _i11;
import '../views/buttons/button.dart' as _i9;
import '../views/dashboard/dashboard.dart' as _i7;
import '../views/menu_bar.dart' as _i1;
import '../views/modal/modal.dart' as _i13;
import '../views/rating/rating.dart' as _i10;
import '../views/toast/toast.dart' as _i8;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    LoginOne.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginOne());
    },
    LoginTwo.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginTwo());
    },
    RegisterOne.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterOne());
    },
    RegisterTwo.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterTwo());
    },
    RecoverPasswordOne.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RecoverPasswordOne());
    },
    Dashboard.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Dashboard());
    },
    Toast.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Toast());
    },
    Button.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.Button());
    },
    Rating.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Rating());
    },
    Badge.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Badge());
    },
    AlertDialogBox.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.AlertDialogBox());
    },
    Modal.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Modal());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(MenuBar.name, path: '/', children: [
          _i14.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'dashboard',
              fullMatch: true),
          _i14.RouteConfig(Dashboard.name,
              path: 'dashboard', parent: MenuBar.name),
          _i14.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i14.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i14.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i14.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i14.RouteConfig(AlertDialogBox.name,
              path: 'alert-dialog', parent: MenuBar.name),
          _i14.RouteConfig(Modal.name, path: 'modal', parent: MenuBar.name)
        ]),
        _i14.RouteConfig(LoginOne.name, path: '/login-one'),
        _i14.RouteConfig(LoginTwo.name, path: '/login-two'),
        _i14.RouteConfig(RegisterOne.name, path: '/register-one'),
        _i14.RouteConfig(RegisterTwo.name, path: '/register-two'),
        _i14.RouteConfig(RecoverPasswordOne.name, path: '/recover-password')
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i14.PageRouteInfo<void> {
  const MenuBar({List<_i14.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.LoginOne]
class LoginOne extends _i14.PageRouteInfo<void> {
  const LoginOne() : super(LoginOne.name, path: '/login-one');

  static const String name = 'LoginOne';
}

/// generated route for
/// [_i3.LoginTwo]
class LoginTwo extends _i14.PageRouteInfo<void> {
  const LoginTwo() : super(LoginTwo.name, path: '/login-two');

  static const String name = 'LoginTwo';
}

/// generated route for
/// [_i4.RegisterOne]
class RegisterOne extends _i14.PageRouteInfo<void> {
  const RegisterOne() : super(RegisterOne.name, path: '/register-one');

  static const String name = 'RegisterOne';
}

/// generated route for
/// [_i5.RegisterTwo]
class RegisterTwo extends _i14.PageRouteInfo<void> {
  const RegisterTwo() : super(RegisterTwo.name, path: '/register-two');

  static const String name = 'RegisterTwo';
}

/// generated route for
/// [_i6.RecoverPasswordOne]
class RecoverPasswordOne extends _i14.PageRouteInfo<void> {
  const RecoverPasswordOne()
      : super(RecoverPasswordOne.name, path: '/recover-password');

  static const String name = 'RecoverPasswordOne';
}

/// generated route for
/// [_i7.Dashboard]
class Dashboard extends _i14.PageRouteInfo<void> {
  const Dashboard() : super(Dashboard.name, path: 'dashboard');

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i8.Toast]
class Toast extends _i14.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i9.Button]
class Button extends _i14.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i10.Rating]
class Rating extends _i14.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i11.Badge]
class Badge extends _i14.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i12.AlertDialogBox]
class AlertDialogBox extends _i14.PageRouteInfo<void> {
  const AlertDialogBox() : super(AlertDialogBox.name, path: 'alert-dialog');

  static const String name = 'AlertDialogBox';
}

/// generated route for
/// [_i13.Modal]
class Modal extends _i14.PageRouteInfo<void> {
  const Modal() : super(Modal.name, path: 'modal');

  static const String name = 'Modal';
}
