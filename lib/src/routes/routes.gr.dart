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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../views/authentication/login/login_one.dart' as _i2;
import '../views/authentication/login/login_two.dart' as _i3;
import '../views/authentication/register/register_one.dart' as _i4;
import '../views/badge/badge.dart' as _i9;
import '../views/buttons/button.dart' as _i7;
import '../views/icons/cupertino_icon.dart' as _i10;
import '../views/menu_bar.dart' as _i1;
import '../views/rating/rating.dart' as _i8;
import '../views/test.dart' as _i5;
import '../views/toast/toast.dart' as _i6;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    LoginOne.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginOne());
    },
    LoginTwo.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginTwo());
    },
    RegisterOne.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterOne());
    },
    TestWidget.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.TestWidget());
    },
    Toast.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Toast());
    },
    Button.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Button());
    },
    Rating.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Rating());
    },
    Badge.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.Badge());
    },
    CupertinoIcon.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CupertinoIcon());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(MenuBar.name, path: '/', children: [
          _i11.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'dashboard',
              fullMatch: true),
          _i11.RouteConfig(TestWidget.name,
              path: 'dashboard', parent: MenuBar.name),
          _i11.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i11.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i11.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i11.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i11.RouteConfig(CupertinoIcon.name,
              path: 'cupertino-icon', parent: MenuBar.name)
        ]),
        _i11.RouteConfig(LoginOne.name, path: 'login-one'),
        _i11.RouteConfig(LoginTwo.name, path: 'login-two'),
        _i11.RouteConfig(RegisterOne.name, path: 'register-one')
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i11.PageRouteInfo<void> {
  const MenuBar({List<_i11.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.LoginOne]
class LoginOne extends _i11.PageRouteInfo<void> {
  const LoginOne() : super(LoginOne.name, path: 'login-one');

  static const String name = 'LoginOne';
}

/// generated route for
/// [_i3.LoginTwo]
class LoginTwo extends _i11.PageRouteInfo<void> {
  const LoginTwo() : super(LoginTwo.name, path: 'login-two');

  static const String name = 'LoginTwo';
}

/// generated route for
/// [_i4.RegisterOne]
class RegisterOne extends _i11.PageRouteInfo<void> {
  const RegisterOne() : super(RegisterOne.name, path: 'register-one');

  static const String name = 'RegisterOne';
}

/// generated route for
/// [_i5.TestWidget]
class TestWidget extends _i11.PageRouteInfo<void> {
  const TestWidget() : super(TestWidget.name, path: 'dashboard');

  static const String name = 'TestWidget';
}

/// generated route for
/// [_i6.Toast]
class Toast extends _i11.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i7.Button]
class Button extends _i11.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i8.Rating]
class Rating extends _i11.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i9.Badge]
class Badge extends _i11.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i10.CupertinoIcon]
class CupertinoIcon extends _i11.PageRouteInfo<void> {
  const CupertinoIcon() : super(CupertinoIcon.name, path: 'cupertino-icon');

  static const String name = 'CupertinoIcon';
}
