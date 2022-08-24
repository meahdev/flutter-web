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
import 'package:auto_route/auto_route.dart' as _i38;
import 'package:flutter/material.dart' as _i39;

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
import '../views/charts/chartist.dart' as _i26;
import '../views/charts/chartjs.dart' as _i27;
import '../views/charts/morris_chart.dart' as _i25;
import '../views/dashboard/dashboard.dart' as _i14;
import '../views/email_templates/alert_email.dart' as _i22;
import '../views/email_templates/basic_email.dart' as _i21;
import '../views/email_templates/billing_email.dart' as _i23;
import '../views/extra_pages/coming_soon.dart' as _i12;
import '../views/extra_pages/directory.dart' as _i34;
import '../views/extra_pages/error_404.dart' as _i10;
import '../views/extra_pages/error_500.dart' as _i11;
import '../views/extra_pages/faqs.dart' as _i35;
import '../views/extra_pages/gallary.dart' as _i37;
import '../views/extra_pages/invoice.dart' as _i36;
import '../views/extra_pages/maintenance.dart' as _i13;
import '../views/extra_pages/pricing.dart' as _i33;
import '../views/extra_pages/timeline.dart' as _i32;
import '../views/menu_bar.dart' as _i1;
import '../views/tables/basic_table.dart' as _i28;
import '../views/tables/data_tables.dart' as _i29;
import '../views/tables/editable_table.dart' as _i31;
import '../views/tables/responsive_table.dart' as _i30;
import '../views/ui_elements/alert/alert_dialog.dart' as _i19;
import '../views/ui_elements/badge/badge.dart' as _i18;
import '../views/ui_elements/buttons/button.dart' as _i16;
import '../views/ui_elements/loader/loader.dart' as _i24;
import '../views/ui_elements/modal/modal.dart' as _i20;
import '../views/ui_elements/rating/rating.dart' as _i17;
import '../views/ui_elements/toast/toast.dart' as _i15;

class AppRouter extends _i38.RootStackRouter {
  AppRouter([_i39.GlobalKey<_i39.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i38.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    LoginOne.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginOne());
    },
    LoginTwo.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginTwo());
    },
    RegisterOne.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterOne());
    },
    RegisterTwo.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterTwo());
    },
    RecoverPasswordOne.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RecoverPasswordOne());
    },
    RecoverPasswordTwo.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RecoverPasswordTwo());
    },
    LockScreenOne.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LockScreenOne());
    },
    LockScreenTwo.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.LockScreenTwo());
    },
    Error404.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Error404());
    },
    Error500.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Error500());
    },
    ComingSoon.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ComingSoon());
    },
    Maintenance.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Maintenance());
    },
    Dashboard.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Dashboard());
    },
    Toast.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Toast());
    },
    Button.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.Button());
    },
    Rating.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.Rating());
    },
    Badge.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.Badge());
    },
    AlertDialogBox.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.AlertDialogBox());
    },
    Modal.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.Modal());
    },
    BasicEmail.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.BasicEmail());
    },
    AlertEmail.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.AlertEmail());
    },
    BillingEmail.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.BillingEmail());
    },
    Loaders.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.Loaders());
    },
    MorrisChart.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.MorrisChart());
    },
    ChartListChart.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.ChartListChart());
    },
    ChartJsChart.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.ChartJsChart());
    },
    BasicTable.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.BasicTable());
    },
    Datatable.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.Datatable());
    },
    ResponsiveTable.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.ResponsiveTable());
    },
    EditableTable.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.EditableTable());
    },
    TimelineScreen.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.TimelineScreen());
    },
    Pricing.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.Pricing());
    },
    DirectoryRoute.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.DirectoryPage());
    },
    FAQs.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i35.FAQs());
    },
    Invoice.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i36.Invoice());
    },
    Gallery.name: (routeData) {
      return _i38.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i37.Gallery());
    }
  };

  @override
  List<_i38.RouteConfig> get routes => [
        _i38.RouteConfig(MenuBar.name, path: '/', children: [
          _i38.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'dashboard',
              fullMatch: true),
          _i38.RouteConfig(Dashboard.name,
              path: 'dashboard', parent: MenuBar.name),
          _i38.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i38.RouteConfig(Button.name, path: 'button', parent: MenuBar.name),
          _i38.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i38.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i38.RouteConfig(AlertDialogBox.name,
              path: 'alert-dialog', parent: MenuBar.name),
          _i38.RouteConfig(Modal.name, path: 'modal', parent: MenuBar.name),
          _i38.RouteConfig(BasicEmail.name,
              path: 'basic-action-email', parent: MenuBar.name),
          _i38.RouteConfig(AlertEmail.name,
              path: 'alert-email', parent: MenuBar.name),
          _i38.RouteConfig(BillingEmail.name,
              path: 'billing-email', parent: MenuBar.name),
          _i38.RouteConfig(Loaders.name, path: 'loaders', parent: MenuBar.name),
          _i38.RouteConfig(MorrisChart.name,
              path: 'morris-chart', parent: MenuBar.name),
          _i38.RouteConfig(ChartListChart.name,
              path: 'chartlist-chart', parent: MenuBar.name),
          _i38.RouteConfig(ChartJsChart.name,
              path: 'chartjs-chart', parent: MenuBar.name),
          _i38.RouteConfig(BasicTable.name,
              path: 'basic-table', parent: MenuBar.name),
          _i38.RouteConfig(Datatable.name,
              path: 'data-table', parent: MenuBar.name),
          _i38.RouteConfig(ResponsiveTable.name,
              path: 'responsive-table', parent: MenuBar.name),
          _i38.RouteConfig(EditableTable.name,
              path: 'editable-table', parent: MenuBar.name),
          _i38.RouteConfig(TimelineScreen.name,
              path: 'timeline', parent: MenuBar.name),
          _i38.RouteConfig(Pricing.name, path: 'pricing', parent: MenuBar.name),
          _i38.RouteConfig(DirectoryRoute.name,
              path: 'directory', parent: MenuBar.name),
          _i38.RouteConfig(FAQs.name, path: 'faqs', parent: MenuBar.name),
          _i38.RouteConfig(Invoice.name, path: 'invoice', parent: MenuBar.name),
          _i38.RouteConfig(Gallery.name, path: 'gallery', parent: MenuBar.name)
        ]),
        _i38.RouteConfig(LoginOne.name, path: '/login-one'),
        _i38.RouteConfig(LoginTwo.name, path: '/login-two'),
        _i38.RouteConfig(RegisterOne.name, path: '/register-one'),
        _i38.RouteConfig(RegisterTwo.name, path: '/register-two'),
        _i38.RouteConfig(RecoverPasswordOne.name,
            path: '/recover-password-one'),
        _i38.RouteConfig(RecoverPasswordTwo.name,
            path: '/recover-password-two'),
        _i38.RouteConfig(LockScreenOne.name, path: '/lock-screen-one'),
        _i38.RouteConfig(LockScreenTwo.name, path: '/lock-screen-two'),
        _i38.RouteConfig(Error404.name, path: '/error-404'),
        _i38.RouteConfig(Error500.name, path: '/error-500'),
        _i38.RouteConfig(ComingSoon.name, path: '/coming-soon'),
        _i38.RouteConfig(Maintenance.name, path: '/maintenance')
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i38.PageRouteInfo<void> {
  const MenuBar({List<_i38.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.LoginOne]
class LoginOne extends _i38.PageRouteInfo<void> {
  const LoginOne() : super(LoginOne.name, path: '/login-one');

  static const String name = 'LoginOne';
}

/// generated route for
/// [_i3.LoginTwo]
class LoginTwo extends _i38.PageRouteInfo<void> {
  const LoginTwo() : super(LoginTwo.name, path: '/login-two');

  static const String name = 'LoginTwo';
}

/// generated route for
/// [_i4.RegisterOne]
class RegisterOne extends _i38.PageRouteInfo<void> {
  const RegisterOne() : super(RegisterOne.name, path: '/register-one');

  static const String name = 'RegisterOne';
}

/// generated route for
/// [_i5.RegisterTwo]
class RegisterTwo extends _i38.PageRouteInfo<void> {
  const RegisterTwo() : super(RegisterTwo.name, path: '/register-two');

  static const String name = 'RegisterTwo';
}

/// generated route for
/// [_i6.RecoverPasswordOne]
class RecoverPasswordOne extends _i38.PageRouteInfo<void> {
  const RecoverPasswordOne()
      : super(RecoverPasswordOne.name, path: '/recover-password-one');

  static const String name = 'RecoverPasswordOne';
}

/// generated route for
/// [_i7.RecoverPasswordTwo]
class RecoverPasswordTwo extends _i38.PageRouteInfo<void> {
  const RecoverPasswordTwo()
      : super(RecoverPasswordTwo.name, path: '/recover-password-two');

  static const String name = 'RecoverPasswordTwo';
}

/// generated route for
/// [_i8.LockScreenOne]
class LockScreenOne extends _i38.PageRouteInfo<void> {
  const LockScreenOne() : super(LockScreenOne.name, path: '/lock-screen-one');

  static const String name = 'LockScreenOne';
}

/// generated route for
/// [_i9.LockScreenTwo]
class LockScreenTwo extends _i38.PageRouteInfo<void> {
  const LockScreenTwo() : super(LockScreenTwo.name, path: '/lock-screen-two');

  static const String name = 'LockScreenTwo';
}

/// generated route for
/// [_i10.Error404]
class Error404 extends _i38.PageRouteInfo<void> {
  const Error404() : super(Error404.name, path: '/error-404');

  static const String name = 'Error404';
}

/// generated route for
/// [_i11.Error500]
class Error500 extends _i38.PageRouteInfo<void> {
  const Error500() : super(Error500.name, path: '/error-500');

  static const String name = 'Error500';
}

/// generated route for
/// [_i12.ComingSoon]
class ComingSoon extends _i38.PageRouteInfo<void> {
  const ComingSoon() : super(ComingSoon.name, path: '/coming-soon');

  static const String name = 'ComingSoon';
}

/// generated route for
/// [_i13.Maintenance]
class Maintenance extends _i38.PageRouteInfo<void> {
  const Maintenance() : super(Maintenance.name, path: '/maintenance');

  static const String name = 'Maintenance';
}

/// generated route for
/// [_i14.Dashboard]
class Dashboard extends _i38.PageRouteInfo<void> {
  const Dashboard() : super(Dashboard.name, path: 'dashboard');

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i15.Toast]
class Toast extends _i38.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i16.Button]
class Button extends _i38.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'button');

  static const String name = 'Button';
}

/// generated route for
/// [_i17.Rating]
class Rating extends _i38.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i18.Badge]
class Badge extends _i38.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i19.AlertDialogBox]
class AlertDialogBox extends _i38.PageRouteInfo<void> {
  const AlertDialogBox() : super(AlertDialogBox.name, path: 'alert-dialog');

  static const String name = 'AlertDialogBox';
}

/// generated route for
/// [_i20.Modal]
class Modal extends _i38.PageRouteInfo<void> {
  const Modal() : super(Modal.name, path: 'modal');

  static const String name = 'Modal';
}

/// generated route for
/// [_i21.BasicEmail]
class BasicEmail extends _i38.PageRouteInfo<void> {
  const BasicEmail() : super(BasicEmail.name, path: 'basic-action-email');

  static const String name = 'BasicEmail';
}

/// generated route for
/// [_i22.AlertEmail]
class AlertEmail extends _i38.PageRouteInfo<void> {
  const AlertEmail() : super(AlertEmail.name, path: 'alert-email');

  static const String name = 'AlertEmail';
}

/// generated route for
/// [_i23.BillingEmail]
class BillingEmail extends _i38.PageRouteInfo<void> {
  const BillingEmail() : super(BillingEmail.name, path: 'billing-email');

  static const String name = 'BillingEmail';
}

/// generated route for
/// [_i24.Loaders]
class Loaders extends _i38.PageRouteInfo<void> {
  const Loaders() : super(Loaders.name, path: 'loaders');

  static const String name = 'Loaders';
}

/// generated route for
/// [_i25.MorrisChart]
class MorrisChart extends _i38.PageRouteInfo<void> {
  const MorrisChart() : super(MorrisChart.name, path: 'morris-chart');

  static const String name = 'MorrisChart';
}

/// generated route for
/// [_i26.ChartListChart]
class ChartListChart extends _i38.PageRouteInfo<void> {
  const ChartListChart() : super(ChartListChart.name, path: 'chartlist-chart');

  static const String name = 'ChartListChart';
}

/// generated route for
/// [_i27.ChartJsChart]
class ChartJsChart extends _i38.PageRouteInfo<void> {
  const ChartJsChart() : super(ChartJsChart.name, path: 'chartjs-chart');

  static const String name = 'ChartJsChart';
}

/// generated route for
/// [_i28.BasicTable]
class BasicTable extends _i38.PageRouteInfo<void> {
  const BasicTable() : super(BasicTable.name, path: 'basic-table');

  static const String name = 'BasicTable';
}

/// generated route for
/// [_i29.Datatable]
class Datatable extends _i38.PageRouteInfo<void> {
  const Datatable() : super(Datatable.name, path: 'data-table');

  static const String name = 'Datatable';
}

/// generated route for
/// [_i30.ResponsiveTable]
class ResponsiveTable extends _i38.PageRouteInfo<void> {
  const ResponsiveTable()
      : super(ResponsiveTable.name, path: 'responsive-table');

  static const String name = 'ResponsiveTable';
}

/// generated route for
/// [_i31.EditableTable]
class EditableTable extends _i38.PageRouteInfo<void> {
  const EditableTable() : super(EditableTable.name, path: 'editable-table');

  static const String name = 'EditableTable';
}

/// generated route for
/// [_i32.TimelineScreen]
class TimelineScreen extends _i38.PageRouteInfo<void> {
  const TimelineScreen() : super(TimelineScreen.name, path: 'timeline');

  static const String name = 'TimelineScreen';
}

/// generated route for
/// [_i33.Pricing]
class Pricing extends _i38.PageRouteInfo<void> {
  const Pricing() : super(Pricing.name, path: 'pricing');

  static const String name = 'Pricing';
}

/// generated route for
/// [_i34.DirectoryPage]
class DirectoryRoute extends _i38.PageRouteInfo<void> {
  const DirectoryRoute() : super(DirectoryRoute.name, path: 'directory');

  static const String name = 'DirectoryRoute';
}

/// generated route for
/// [_i35.FAQs]
class FAQs extends _i38.PageRouteInfo<void> {
  const FAQs() : super(FAQs.name, path: 'faqs');

  static const String name = 'FAQs';
}

/// generated route for
/// [_i36.Invoice]
class Invoice extends _i38.PageRouteInfo<void> {
  const Invoice() : super(Invoice.name, path: 'invoice');

  static const String name = 'Invoice';
}

/// generated route for
/// [_i37.Gallery]
class Gallery extends _i38.PageRouteInfo<void> {
  const Gallery() : super(Gallery.name, path: 'gallery');

  static const String name = 'Gallery';
}
