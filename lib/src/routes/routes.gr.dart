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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../views/buttons/button.dart' as _i3;
import '../views/dashboard/dashboard.dart' as _i2;
import '../views/menu_bar.dart' as _i1;
import '../views/rating/rating.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    Dashboard.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Dashboard());
    },
    Button.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Button());
    },
    Rating.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Rating());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MenuBar.name, path: '/', children: [
          _i5.RouteConfig(Dashboard.name,
              path: 'dashboard', parent: MenuBar.name),
          _i5.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i5.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name)
        ])
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i5.PageRouteInfo<void> {
  const MenuBar({List<_i5.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.Dashboard]
class Dashboard extends _i5.PageRouteInfo<void> {
  const Dashboard() : super(Dashboard.name, path: 'dashboard');

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i3.Button]
class Button extends _i5.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i4.Rating]
class Rating extends _i5.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}
