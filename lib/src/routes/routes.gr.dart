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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../views/badge/badge.dart' as _i6;
import '../views/buttons/button.dart' as _i4;
import '../views/forms/elements_form.dart' as _i8;
import '../views/forms/file_upload_form.dart' as _i10;
import '../views/forms/repeater_form.dart' as _i11;
import '../views/forms/validation_form.dart' as _i9;
import '../views/icons/cupertino_icon.dart' as _i7;
import '../views/menu_bar.dart' as _i1;
import '../views/rating/rating.dart' as _i5;
import '../views/test.dart' as _i2;
import '../views/toast/toast.dart' as _i3;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    TestWidget.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TestWidget());
    },
    Toast.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Toast());
    },
    Button.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Button());
    },
    Rating.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Rating());
    },
    Badge.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Badge());
    },
    CupertinoIcon.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CupertinoIcon());
    },
    ElementsForm.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ElementsForm());
    },
    ValidationForm.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ValidationForm());
    },
    FileUploadForm.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.FileUploadForm());
    },
    RepeaterForm.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.RepeaterForm());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(MenuBar.name, path: '/', children: [
          _i12.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'dashboard',
              fullMatch: true),
          _i12.RouteConfig(TestWidget.name,
              path: 'dashboard', parent: MenuBar.name),
          _i12.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i12.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i12.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i12.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i12.RouteConfig(CupertinoIcon.name,
              path: 'cupertino-icon', parent: MenuBar.name),
          _i12.RouteConfig(ElementsForm.name,
              path: 'form-elements', parent: MenuBar.name),
          _i12.RouteConfig(ValidationForm.name,
              path: 'form-validation', parent: MenuBar.name),
          _i12.RouteConfig(FileUploadForm.name,
              path: 'form-uploads', parent: MenuBar.name),
          _i12.RouteConfig(RepeaterForm.name,
              path: 'form-repeater', parent: MenuBar.name)
        ])
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i12.PageRouteInfo<void> {
  const MenuBar({List<_i12.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.TestWidget]
class TestWidget extends _i12.PageRouteInfo<void> {
  const TestWidget() : super(TestWidget.name, path: 'dashboard');

  static const String name = 'TestWidget';
}

/// generated route for
/// [_i3.Toast]
class Toast extends _i12.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i4.Button]
class Button extends _i12.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i5.Rating]
class Rating extends _i12.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i6.Badge]
class Badge extends _i12.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i7.CupertinoIcon]
class CupertinoIcon extends _i12.PageRouteInfo<void> {
  const CupertinoIcon() : super(CupertinoIcon.name, path: 'cupertino-icon');

  static const String name = 'CupertinoIcon';
}

/// generated route for
/// [_i8.ElementsForm]
class ElementsForm extends _i12.PageRouteInfo<void> {
  const ElementsForm() : super(ElementsForm.name, path: 'form-elements');

  static const String name = 'ElementsForm';
}

/// generated route for
/// [_i9.ValidationForm]
class ValidationForm extends _i12.PageRouteInfo<void> {
  const ValidationForm() : super(ValidationForm.name, path: 'form-validation');

  static const String name = 'ValidationForm';
}

/// generated route for
/// [_i10.FileUploadForm]
class FileUploadForm extends _i12.PageRouteInfo<void> {
  const FileUploadForm() : super(FileUploadForm.name, path: 'form-uploads');

  static const String name = 'FileUploadForm';
}

/// generated route for
/// [_i11.RepeaterForm]
class RepeaterForm extends _i12.PageRouteInfo<void> {
  const RepeaterForm() : super(RepeaterForm.name, path: 'form-repeater');

  static const String name = 'RepeaterForm';
}
