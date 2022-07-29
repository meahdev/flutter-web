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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../views/buttons/button.dart' as _i3;
import '../views/menu_bar.dart' as _i1;
import '../views/test.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    TestWidget.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TestWidget());
    },
    Button.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Button());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MenuBar.name, path: '/', children: [
          _i4.RouteConfig(TestWidget.name, path: 'test', parent: MenuBar.name),
          _i4.RouteConfig(Button.name, path: 'button', parent: MenuBar.name)
        ])
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i4.PageRouteInfo<void> {
  const MenuBar({List<_i4.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.TestWidget]
class TestWidget extends _i4.PageRouteInfo<void> {
  const TestWidget() : super(TestWidget.name, path: 'test');

  static const String name = 'TestWidget';
}

/// generated route for
/// [_i3.Button]
class Button extends _i4.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}
