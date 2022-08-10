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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../provider/form_colorpicker/bloc/form_color_bloc.dart' as _i11;
import '../provider/form_counter/bloc/form_textfield_counter_bloc.dart' as _i12;
import '../provider/form_dropdown/bloc/form_dropdown_bloc.dart' as _i13;
import '../views/badge/badge.dart' as _i6;
import '../views/buttons/button.dart' as _i4;
import '../views/forms/elements_form.dart' as _i8;
import '../views/icons/cupertino_icon.dart' as _i7;
import '../views/menu_bar.dart' as _i1;
import '../views/rating/rating.dart' as _i5;
import '../views/test.dart' as _i2;
import '../views/toast/toast.dart' as _i3;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    TestWidget.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TestWidget());
    },
    Toast.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Toast());
    },
    Button.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Button());
    },
    Rating.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Rating());
    },
    Badge.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Badge());
    },
    CupertinoIcon.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CupertinoIcon());
    },
    ElementsForm.name: (routeData) {
      final args = routeData.argsAs<ElementsFormArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ElementsForm(
              key: args.key,
              formColorBloc: args.formColorBloc,
              formTextfieldCounterBloc: args.formTextfieldCounterBloc,
              formDropDownBloc: args.formDropDownBloc));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(MenuBar.name, path: '/', children: [
          _i9.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'dashboard',
              fullMatch: true),
          _i9.RouteConfig(TestWidget.name,
              path: 'dashboard', parent: MenuBar.name),
          _i9.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i9.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i9.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i9.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i9.RouteConfig(CupertinoIcon.name,
              path: 'cupertino-icon', parent: MenuBar.name),
          _i9.RouteConfig(ElementsForm.name,
              path: 'form-elements', parent: MenuBar.name)
        ])
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i9.PageRouteInfo<void> {
  const MenuBar({List<_i9.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.TestWidget]
class TestWidget extends _i9.PageRouteInfo<void> {
  const TestWidget() : super(TestWidget.name, path: 'dashboard');

  static const String name = 'TestWidget';
}

/// generated route for
/// [_i3.Toast]
class Toast extends _i9.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i4.Button]
class Button extends _i9.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i5.Rating]
class Rating extends _i9.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i6.Badge]
class Badge extends _i9.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i7.CupertinoIcon]
class CupertinoIcon extends _i9.PageRouteInfo<void> {
  const CupertinoIcon() : super(CupertinoIcon.name, path: 'cupertino-icon');

  static const String name = 'CupertinoIcon';
}

/// generated route for
/// [_i8.ElementsForm]
class ElementsForm extends _i9.PageRouteInfo<ElementsFormArgs> {
  ElementsForm(
      {_i10.Key? key,
      required _i11.FormColorBloc formColorBloc,
      required _i12.FormTextfieldCounterBloc formTextfieldCounterBloc,
      required _i13.FormDropdownBloc formDropDownBloc})
      : super(ElementsForm.name,
            path: 'form-elements',
            args: ElementsFormArgs(
                key: key,
                formColorBloc: formColorBloc,
                formTextfieldCounterBloc: formTextfieldCounterBloc,
                formDropDownBloc: formDropDownBloc));

  static const String name = 'ElementsForm';
}

class ElementsFormArgs {
  const ElementsFormArgs(
      {this.key,
      required this.formColorBloc,
      required this.formTextfieldCounterBloc,
      required this.formDropDownBloc});

  final _i10.Key? key;

  final _i11.FormColorBloc formColorBloc;

  final _i12.FormTextfieldCounterBloc formTextfieldCounterBloc;

  final _i13.FormDropdownBloc formDropDownBloc;

  @override
  String toString() {
    return 'ElementsFormArgs{key: $key, formColorBloc: $formColorBloc, formTextfieldCounterBloc: $formTextfieldCounterBloc, formDropDownBloc: $formDropDownBloc}';
  }
}
