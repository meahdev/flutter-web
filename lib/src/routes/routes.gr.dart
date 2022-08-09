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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../views/alert/alert_dialog.dart' as _i7;
import '../views/badge/badge.dart' as _i6;
import '../views/buttons/button.dart' as _i4;
import '../views/icons/cupertino_icon.dart' as _i9;
import '../views/menu_bar.dart' as _i1;
import '../views/modal/modal.dart' as _i8;
import '../views/rating/rating.dart' as _i5;
import '../views/test.dart' as _i2;
import '../views/toast/toast.dart' as _i3;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    TestWidget.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TestWidget());
    },
    Toast.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Toast());
    },
    Button.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Button());
    },
    Rating.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Rating());
    },
    Badge.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Badge());
    },
    AlertDialogBox.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AlertDialogBox());
    },
    Modal.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Modal());
    },
    CupertinoIcon.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.CupertinoIcon());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(MenuBar.name, path: '/', children: [
          _i10.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'modal',
              fullMatch: true),
          _i10.RouteConfig(TestWidget.name,
              path: 'dashboard', parent: MenuBar.name),
          _i10.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i10.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i10.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i10.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i10.RouteConfig(AlertDialogBox.name,
              path: 'alert-dialog', parent: MenuBar.name),
          _i10.RouteConfig(Modal.name, path: 'modal', parent: MenuBar.name),
          _i10.RouteConfig(CupertinoIcon.name,
              path: 'cupertino-icon', parent: MenuBar.name)
        ])
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i10.PageRouteInfo<void> {
  const MenuBar({List<_i10.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.TestWidget]
class TestWidget extends _i10.PageRouteInfo<void> {
  const TestWidget() : super(TestWidget.name, path: 'dashboard');

  static const String name = 'TestWidget';
}

/// generated route for
/// [_i3.Toast]
class Toast extends _i10.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i4.Button]
class Button extends _i10.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i5.Rating]
class Rating extends _i10.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i6.Badge]
class Badge extends _i10.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i7.AlertDialogBox]
class AlertDialogBox extends _i10.PageRouteInfo<void> {
  const AlertDialogBox() : super(AlertDialogBox.name, path: 'alert-dialog');

  static const String name = 'AlertDialogBox';
}

/// generated route for
/// [_i8.Modal]
class Modal extends _i10.PageRouteInfo<void> {
  const Modal() : super(Modal.name, path: 'modal');

  static const String name = 'Modal';
}

/// generated route for
/// [_i9.CupertinoIcon]
class CupertinoIcon extends _i10.PageRouteInfo<void> {
  const CupertinoIcon() : super(CupertinoIcon.name, path: 'cupertino-icon');

  static const String name = 'CupertinoIcon';
}
