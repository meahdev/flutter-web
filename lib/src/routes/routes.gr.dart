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
import 'package:auto_route/auto_route.dart' as _i50;
import 'package:flutter/material.dart' as _i51;

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
import '../views/calender/calender.dart' as _i15;
import '../views/charts/chartist.dart' as _i29;
import '../views/charts/chartjs.dart' as _i30;
import '../views/charts/morris_chart.dart' as _i28;
import '../views/dashboard/dashboard.dart' as _i14;
import '../views/email_templates/alert_email.dart' as _i26;
import '../views/email_templates/basic_email.dart' as _i25;
import '../views/email_templates/billing_email.dart' as _i27;
import '../views/extra_pages/coming_soon.dart' as _i12;
import '../views/extra_pages/directory.dart' as _i37;
import '../views/extra_pages/error_404.dart' as _i10;
import '../views/extra_pages/error_500.dart' as _i11;
import '../views/extra_pages/faqs.dart' as _i38;
import '../views/extra_pages/gallery.dart' as _i40;
import '../views/extra_pages/invoice.dart' as _i39;
import '../views/extra_pages/maintenance.dart' as _i13;
import '../views/extra_pages/pricing.dart' as _i36;
import '../views/extra_pages/timeline.dart' as _i35;
import '../views/forms/elements_form.dart' as _i42;
import '../views/forms/file_upload_form.dart' as _i44;
import '../views/forms/mask_form.dart' as _i46;
import '../views/forms/repeater_form.dart' as _i45;
import '../views/forms/validation_form.dart' as _i43;
import '../views/forms/wizard_form.dart' as _i47;
import '../views/map/map.dart' as _i16;
import '../views/menu_bar.dart' as _i1;
import '../views/tables/basic_table.dart' as _i31;
import '../views/tables/data_tables.dart' as _i32;
import '../views/tables/editable_table.dart' as _i34;
import '../views/tables/responsive_table.dart' as _i33;
import '../views/ui_elements/alert/alert_dialog.dart' as _i21;
import '../views/ui_elements/badge/badge.dart' as _i20;
import '../views/ui_elements/buttons/button.dart' as _i18;
import '../views/ui_elements/carousel/carousel.dart' as _i41;
import '../views/ui_elements/loader/loader.dart' as _i23;
import '../views/ui_elements/modal/modal.dart' as _i22;
import '../views/ui_elements/rating/rating.dart' as _i19;
import '../views/ui_elements/tabbar/tabs_screen.dart' as _i24;
import '../views/ui_elements/toast/toast.dart' as _i17;
import '../views/ui_elements/videos/video_screen.dart' as _i48;
import '../views/user/user_profile.dart' as _i49;

class AppRouter extends _i50.RootStackRouter {
  AppRouter([_i51.GlobalKey<_i51.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i50.PageFactory> pagesMap = {
    MenuBar.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MenuBar());
    },
    LoginOne.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginOne());
    },
    LoginTwo.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginTwo());
    },
    RegisterOne.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterOne());
    },
    RegisterTwo.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterTwo());
    },
    RecoverPasswordOne.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RecoverPasswordOne());
    },
    RecoverPasswordTwo.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RecoverPasswordTwo());
    },
    LockScreenOne.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LockScreenOne());
    },
    LockScreenTwo.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.LockScreenTwo());
    },
    Error404.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Error404());
    },
    Error500.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Error500());
    },
    ComingSoon.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ComingSoon());
    },
    Maintenance.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Maintenance());
    },
    Dashboard.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Dashboard());
    },
    Calendar.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.Calendar());
    },
    GoogleMaps.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.GoogleMaps());
    },
    Toast.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.Toast());
    },
    Button.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.Button());
    },
    Rating.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.Rating());
    },
    Badge.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.Badge());
    },
    AlertDialogBox.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.AlertDialogBox());
    },
    Modal.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.Modal());
    },
    Loaders.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.Loaders());
    },
    TabScreen.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.TabScreen());
    },
    BasicEmail.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.BasicEmail());
    },
    AlertEmail.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.AlertEmail());
    },
    BillingEmail.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.BillingEmail());
    },
    MorrisChart.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.MorrisChart());
    },
    ChartListChart.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.ChartListChart());
    },
    ChartJsChart.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.ChartJsChart());
    },
    BasicTable.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.BasicTable());
    },
    Datatable.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.Datatable());
    },
    ResponsiveTable.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.ResponsiveTable());
    },
    EditableTable.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.EditableTable());
    },
    TimelineScreen.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i35.TimelineScreen());
    },
    Pricing.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i36.Pricing());
    },
    DirectoryRoute.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i37.DirectoryPage());
    },
    FAQs.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i38.FAQs());
    },
    Invoice.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i39.Invoice());
    },
    Gallery.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i40.Gallery());
    },
    Carousel.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i41.Carousel());
    },
    ElementsForm.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i42.ElementsForm());
    },
    ValidationForm.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.ValidationForm());
    },
    FileUploadForm.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i44.FileUploadForm());
    },
    RepeaterForm.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i45.RepeaterForm());
    },
    MaskForm.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i46.MaskForm());
    },
    WizardForm.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i47.WizardForm());
    },
    VideoScreen.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i48.VideoScreen());
    },
    UserProfile.name: (routeData) {
      return _i50.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i49.UserProfile());
    }
  };

  @override
  List<_i50.RouteConfig> get routes => [
        _i50.RouteConfig(MenuBar.name, path: '/', children: [
          _i50.RouteConfig('#redirect',
              path: '',
              parent: MenuBar.name,
              redirectTo: 'user-profile',
              fullMatch: true),
          _i50.RouteConfig(Dashboard.name,
              path: 'dashboard', parent: MenuBar.name),
          _i50.RouteConfig(Calendar.name,
              path: 'calendar', parent: MenuBar.name),
          _i50.RouteConfig(GoogleMaps.name, path: 'map', parent: MenuBar.name),
          _i50.RouteConfig(Toast.name, path: 'toast', parent: MenuBar.name),
          _i50.RouteConfig(Button.name, path: 'buttons', parent: MenuBar.name),
          _i50.RouteConfig(Rating.name, path: 'rating', parent: MenuBar.name),
          _i50.RouteConfig(Badge.name, path: 'badge', parent: MenuBar.name),
          _i50.RouteConfig(AlertDialogBox.name,
              path: 'alert-dialog', parent: MenuBar.name),
          _i50.RouteConfig(Modal.name, path: 'modal', parent: MenuBar.name),
          _i50.RouteConfig(Loaders.name, path: 'loaders', parent: MenuBar.name),
          _i50.RouteConfig(TabScreen.name, path: 'tabs', parent: MenuBar.name),
          _i50.RouteConfig(BasicEmail.name,
              path: 'basic-action-email', parent: MenuBar.name),
          _i50.RouteConfig(AlertEmail.name,
              path: 'alert-email', parent: MenuBar.name),
          _i50.RouteConfig(BillingEmail.name,
              path: 'billing-email', parent: MenuBar.name),
          _i50.RouteConfig(MorrisChart.name,
              path: 'morris-chart', parent: MenuBar.name),
          _i50.RouteConfig(ChartListChart.name,
              path: 'chartist-chart', parent: MenuBar.name),
          _i50.RouteConfig(ChartJsChart.name,
              path: 'chartjs-chart', parent: MenuBar.name),
          _i50.RouteConfig(BasicTable.name,
              path: 'basic-table', parent: MenuBar.name),
          _i50.RouteConfig(Datatable.name,
              path: 'data-table', parent: MenuBar.name),
          _i50.RouteConfig(ResponsiveTable.name,
              path: 'responsive-table', parent: MenuBar.name),
          _i50.RouteConfig(EditableTable.name,
              path: 'editable-table', parent: MenuBar.name),
          _i50.RouteConfig(TimelineScreen.name,
              path: 'timeline', parent: MenuBar.name),
          _i50.RouteConfig(Pricing.name, path: 'pricing', parent: MenuBar.name),
          _i50.RouteConfig(DirectoryRoute.name,
              path: 'directory', parent: MenuBar.name),
          _i50.RouteConfig(FAQs.name, path: 'faqs', parent: MenuBar.name),
          _i50.RouteConfig(Invoice.name, path: 'invoice', parent: MenuBar.name),
          _i50.RouteConfig(Gallery.name, path: 'gallery', parent: MenuBar.name),
          _i50.RouteConfig(Carousel.name,
              path: 'carousel', parent: MenuBar.name),
          _i50.RouteConfig(ElementsForm.name,
              path: 'form-elements', parent: MenuBar.name),
          _i50.RouteConfig(ValidationForm.name,
              path: 'form-validation', parent: MenuBar.name),
          _i50.RouteConfig(FileUploadForm.name,
              path: 'form-file-upload', parent: MenuBar.name),
          _i50.RouteConfig(RepeaterForm.name,
              path: 'form-repeater', parent: MenuBar.name),
          _i50.RouteConfig(MaskForm.name,
              path: 'form-mask', parent: MenuBar.name),
          _i50.RouteConfig(WizardForm.name,
              path: 'form-wizard', parent: MenuBar.name),
          _i50.RouteConfig(VideoScreen.name,
              path: 'video-player', parent: MenuBar.name),
          _i50.RouteConfig(UserProfile.name,
              path: 'user-profile', parent: MenuBar.name)
        ]),
        _i50.RouteConfig(LoginOne.name, path: '/login-one'),
        _i50.RouteConfig(LoginTwo.name, path: '/login-two'),
        _i50.RouteConfig(RegisterOne.name, path: '/register-one'),
        _i50.RouteConfig(RegisterTwo.name, path: '/register-two'),
        _i50.RouteConfig(RecoverPasswordOne.name,
            path: '/recover-password-one'),
        _i50.RouteConfig(RecoverPasswordTwo.name,
            path: '/recover-password-two'),
        _i50.RouteConfig(LockScreenOne.name, path: '/lock-screen-one'),
        _i50.RouteConfig(LockScreenTwo.name, path: '/lock-screen-two'),
        _i50.RouteConfig(Error404.name, path: '/error-404'),
        _i50.RouteConfig(Error500.name, path: '/error-500'),
        _i50.RouteConfig(ComingSoon.name, path: '/coming-soon'),
        _i50.RouteConfig(Maintenance.name, path: '/maintenance')
      ];
}

/// generated route for
/// [_i1.MenuBar]
class MenuBar extends _i50.PageRouteInfo<void> {
  const MenuBar({List<_i50.PageRouteInfo>? children})
      : super(MenuBar.name, path: '/', initialChildren: children);

  static const String name = 'MenuBar';
}

/// generated route for
/// [_i2.LoginOne]
class LoginOne extends _i50.PageRouteInfo<void> {
  const LoginOne() : super(LoginOne.name, path: '/login-one');

  static const String name = 'LoginOne';
}

/// generated route for
/// [_i3.LoginTwo]
class LoginTwo extends _i50.PageRouteInfo<void> {
  const LoginTwo() : super(LoginTwo.name, path: '/login-two');

  static const String name = 'LoginTwo';
}

/// generated route for
/// [_i4.RegisterOne]
class RegisterOne extends _i50.PageRouteInfo<void> {
  const RegisterOne() : super(RegisterOne.name, path: '/register-one');

  static const String name = 'RegisterOne';
}

/// generated route for
/// [_i5.RegisterTwo]
class RegisterTwo extends _i50.PageRouteInfo<void> {
  const RegisterTwo() : super(RegisterTwo.name, path: '/register-two');

  static const String name = 'RegisterTwo';
}

/// generated route for
/// [_i6.RecoverPasswordOne]
class RecoverPasswordOne extends _i50.PageRouteInfo<void> {
  const RecoverPasswordOne()
      : super(RecoverPasswordOne.name, path: '/recover-password-one');

  static const String name = 'RecoverPasswordOne';
}

/// generated route for
/// [_i7.RecoverPasswordTwo]
class RecoverPasswordTwo extends _i50.PageRouteInfo<void> {
  const RecoverPasswordTwo()
      : super(RecoverPasswordTwo.name, path: '/recover-password-two');

  static const String name = 'RecoverPasswordTwo';
}

/// generated route for
/// [_i8.LockScreenOne]
class LockScreenOne extends _i50.PageRouteInfo<void> {
  const LockScreenOne() : super(LockScreenOne.name, path: '/lock-screen-one');

  static const String name = 'LockScreenOne';
}

/// generated route for
/// [_i9.LockScreenTwo]
class LockScreenTwo extends _i50.PageRouteInfo<void> {
  const LockScreenTwo() : super(LockScreenTwo.name, path: '/lock-screen-two');

  static const String name = 'LockScreenTwo';
}

/// generated route for
/// [_i10.Error404]
class Error404 extends _i50.PageRouteInfo<void> {
  const Error404() : super(Error404.name, path: '/error-404');

  static const String name = 'Error404';
}

/// generated route for
/// [_i11.Error500]
class Error500 extends _i50.PageRouteInfo<void> {
  const Error500() : super(Error500.name, path: '/error-500');

  static const String name = 'Error500';
}

/// generated route for
/// [_i12.ComingSoon]
class ComingSoon extends _i50.PageRouteInfo<void> {
  const ComingSoon() : super(ComingSoon.name, path: '/coming-soon');

  static const String name = 'ComingSoon';
}

/// generated route for
/// [_i13.Maintenance]
class Maintenance extends _i50.PageRouteInfo<void> {
  const Maintenance() : super(Maintenance.name, path: '/maintenance');

  static const String name = 'Maintenance';
}

/// generated route for
/// [_i14.Dashboard]
class Dashboard extends _i50.PageRouteInfo<void> {
  const Dashboard() : super(Dashboard.name, path: 'dashboard');

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i15.Calendar]
class Calendar extends _i50.PageRouteInfo<void> {
  const Calendar() : super(Calendar.name, path: 'calendar');

  static const String name = 'Calendar';
}

/// generated route for
/// [_i16.GoogleMaps]
class GoogleMaps extends _i50.PageRouteInfo<void> {
  const GoogleMaps() : super(GoogleMaps.name, path: 'map');

  static const String name = 'GoogleMaps';
}

/// generated route for
/// [_i17.Toast]
class Toast extends _i50.PageRouteInfo<void> {
  const Toast() : super(Toast.name, path: 'toast');

  static const String name = 'Toast';
}

/// generated route for
/// [_i18.Button]
class Button extends _i50.PageRouteInfo<void> {
  const Button() : super(Button.name, path: 'buttons');

  static const String name = 'Button';
}

/// generated route for
/// [_i19.Rating]
class Rating extends _i50.PageRouteInfo<void> {
  const Rating() : super(Rating.name, path: 'rating');

  static const String name = 'Rating';
}

/// generated route for
/// [_i20.Badge]
class Badge extends _i50.PageRouteInfo<void> {
  const Badge() : super(Badge.name, path: 'badge');

  static const String name = 'Badge';
}

/// generated route for
/// [_i21.AlertDialogBox]
class AlertDialogBox extends _i50.PageRouteInfo<void> {
  const AlertDialogBox() : super(AlertDialogBox.name, path: 'alert-dialog');

  static const String name = 'AlertDialogBox';
}

/// generated route for
/// [_i22.Modal]
class Modal extends _i50.PageRouteInfo<void> {
  const Modal() : super(Modal.name, path: 'modal');

  static const String name = 'Modal';
}

/// generated route for
/// [_i23.Loaders]
class Loaders extends _i50.PageRouteInfo<void> {
  const Loaders() : super(Loaders.name, path: 'loaders');

  static const String name = 'Loaders';
}

/// generated route for
/// [_i24.TabScreen]
class TabScreen extends _i50.PageRouteInfo<void> {
  const TabScreen() : super(TabScreen.name, path: 'tabs');

  static const String name = 'TabScreen';
}

/// generated route for
/// [_i25.BasicEmail]
class BasicEmail extends _i50.PageRouteInfo<void> {
  const BasicEmail() : super(BasicEmail.name, path: 'basic-action-email');

  static const String name = 'BasicEmail';
}

/// generated route for
/// [_i26.AlertEmail]
class AlertEmail extends _i50.PageRouteInfo<void> {
  const AlertEmail() : super(AlertEmail.name, path: 'alert-email');

  static const String name = 'AlertEmail';
}

/// generated route for
/// [_i27.BillingEmail]
class BillingEmail extends _i50.PageRouteInfo<void> {
  const BillingEmail() : super(BillingEmail.name, path: 'billing-email');

  static const String name = 'BillingEmail';
}

/// generated route for
/// [_i28.MorrisChart]
class MorrisChart extends _i50.PageRouteInfo<void> {
  const MorrisChart() : super(MorrisChart.name, path: 'morris-chart');

  static const String name = 'MorrisChart';
}

/// generated route for
/// [_i29.ChartListChart]
class ChartListChart extends _i50.PageRouteInfo<void> {
  const ChartListChart() : super(ChartListChart.name, path: 'chartist-chart');

  static const String name = 'ChartListChart';
}

/// generated route for
/// [_i30.ChartJsChart]
class ChartJsChart extends _i50.PageRouteInfo<void> {
  const ChartJsChart() : super(ChartJsChart.name, path: 'chartjs-chart');

  static const String name = 'ChartJsChart';
}

/// generated route for
/// [_i31.BasicTable]
class BasicTable extends _i50.PageRouteInfo<void> {
  const BasicTable() : super(BasicTable.name, path: 'basic-table');

  static const String name = 'BasicTable';
}

/// generated route for
/// [_i32.Datatable]
class Datatable extends _i50.PageRouteInfo<void> {
  const Datatable() : super(Datatable.name, path: 'data-table');

  static const String name = 'Datatable';
}

/// generated route for
/// [_i33.ResponsiveTable]
class ResponsiveTable extends _i50.PageRouteInfo<void> {
  const ResponsiveTable()
      : super(ResponsiveTable.name, path: 'responsive-table');

  static const String name = 'ResponsiveTable';
}

/// generated route for
/// [_i34.EditableTable]
class EditableTable extends _i50.PageRouteInfo<void> {
  const EditableTable() : super(EditableTable.name, path: 'editable-table');

  static const String name = 'EditableTable';
}

/// generated route for
/// [_i35.TimelineScreen]
class TimelineScreen extends _i50.PageRouteInfo<void> {
  const TimelineScreen() : super(TimelineScreen.name, path: 'timeline');

  static const String name = 'TimelineScreen';
}

/// generated route for
/// [_i36.Pricing]
class Pricing extends _i50.PageRouteInfo<void> {
  const Pricing() : super(Pricing.name, path: 'pricing');

  static const String name = 'Pricing';
}

/// generated route for
/// [_i37.DirectoryPage]
class DirectoryRoute extends _i50.PageRouteInfo<void> {
  const DirectoryRoute() : super(DirectoryRoute.name, path: 'directory');

  static const String name = 'DirectoryRoute';
}

/// generated route for
/// [_i38.FAQs]
class FAQs extends _i50.PageRouteInfo<void> {
  const FAQs() : super(FAQs.name, path: 'faqs');

  static const String name = 'FAQs';
}

/// generated route for
/// [_i39.Invoice]
class Invoice extends _i50.PageRouteInfo<void> {
  const Invoice() : super(Invoice.name, path: 'invoice');

  static const String name = 'Invoice';
}

/// generated route for
/// [_i40.Gallery]
class Gallery extends _i50.PageRouteInfo<void> {
  const Gallery() : super(Gallery.name, path: 'gallery');

  static const String name = 'Gallery';
}

/// generated route for
/// [_i41.Carousel]
class Carousel extends _i50.PageRouteInfo<void> {
  const Carousel() : super(Carousel.name, path: 'carousel');

  static const String name = 'Carousel';
}

/// generated route for
/// [_i42.ElementsForm]
class ElementsForm extends _i50.PageRouteInfo<void> {
  const ElementsForm() : super(ElementsForm.name, path: 'form-elements');

  static const String name = 'ElementsForm';
}

/// generated route for
/// [_i43.ValidationForm]
class ValidationForm extends _i50.PageRouteInfo<void> {
  const ValidationForm() : super(ValidationForm.name, path: 'form-validation');

  static const String name = 'ValidationForm';
}

/// generated route for
/// [_i44.FileUploadForm]
class FileUploadForm extends _i50.PageRouteInfo<void> {
  const FileUploadForm() : super(FileUploadForm.name, path: 'form-file-upload');

  static const String name = 'FileUploadForm';
}

/// generated route for
/// [_i45.RepeaterForm]
class RepeaterForm extends _i50.PageRouteInfo<void> {
  const RepeaterForm() : super(RepeaterForm.name, path: 'form-repeater');

  static const String name = 'RepeaterForm';
}

/// generated route for
/// [_i46.MaskForm]
class MaskForm extends _i50.PageRouteInfo<void> {
  const MaskForm() : super(MaskForm.name, path: 'form-mask');

  static const String name = 'MaskForm';
}

/// generated route for
/// [_i47.WizardForm]
class WizardForm extends _i50.PageRouteInfo<void> {
  const WizardForm() : super(WizardForm.name, path: 'form-wizard');

  static const String name = 'WizardForm';
}

/// generated route for
/// [_i48.VideoScreen]
class VideoScreen extends _i50.PageRouteInfo<void> {
  const VideoScreen() : super(VideoScreen.name, path: 'video-player');

  static const String name = 'VideoScreen';
}

/// generated route for
/// [_i49.UserProfile]
class UserProfile extends _i50.PageRouteInfo<void> {
  const UserProfile() : super(UserProfile.name, path: 'user-profile');

  static const String name = 'UserProfile';
}
