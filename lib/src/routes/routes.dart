import 'package:admin_dashboard/src/views/alert/alert_dialog.dart';
import 'package:admin_dashboard/src/views/badge/badge.dart';
import 'package:admin_dashboard/src/views/buttons/button.dart';
import 'package:admin_dashboard/src/views/icons/cupertino_icon.dart';
import 'package:admin_dashboard/src/views/menu_bar.dart';
import 'package:admin_dashboard/src/views/modal/modal.dart';
import 'package:admin_dashboard/src/views/rating/rating.dart';
import 'package:admin_dashboard/src/views/test.dart';
import 'package:admin_dashboard/src/views/toast/toast.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MenuBar,
      children: [
        RedirectRoute(path: '', redirectTo: 'modal'),
        AutoRoute(path: 'dashboard', page: TestWidget),
        AutoRoute(path: 'toast', page: Toast),
        AutoRoute(path: 'buttons', page: Button),
        AutoRoute(path: 'rating', page: Rating),
        AutoRoute(path: 'badge', page: Badge),
        AutoRoute(path: 'alert-dialog', page: AlertDialogBox),
        AutoRoute(path: 'modal', page: Modal),
        AutoRoute(path: 'cupertino-icon', page: CupertinoIcon),
      ],
    ),

  ],
)
class $AppRouter {}
