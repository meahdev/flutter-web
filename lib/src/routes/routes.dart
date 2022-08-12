import 'package:admin_dashboard/src/views/alert/alert_dialog.dart';
import 'package:admin_dashboard/src/views/authentication/login/login_one.dart';
import 'package:admin_dashboard/src/views/authentication/login/login_two.dart';
import 'package:admin_dashboard/src/views/authentication/recover_password/recover_password_one.dart';
import 'package:admin_dashboard/src/views/authentication/register/register_one.dart';
import 'package:admin_dashboard/src/views/authentication/register/register_two.dart';
import 'package:admin_dashboard/src/views/badge/badge.dart';
import 'package:admin_dashboard/src/views/buttons/button.dart';
import 'package:admin_dashboard/src/views/menu_bar.dart';
import 'package:admin_dashboard/src/views/modal/modal.dart';
import 'package:admin_dashboard/src/views/rating/rating.dart';
import 'package:admin_dashboard/src/views/toast/toast.dart';
import 'package:admin_dashboard/src/views/dashboard/dashboard.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MenuBar,
      children: [
        RedirectRoute(path: '', redirectTo: 'dashboard'),
        AutoRoute(path: 'dashboard', page: Dashboard),
        AutoRoute(path: 'toast', page: Toast),
        AutoRoute(path: 'button', page: Button),
        AutoRoute(path: 'rating', page: Rating),
        AutoRoute(path: 'badge', page: Badge),
        AutoRoute(path: 'alert-dialog', page: AlertDialogBox),
        AutoRoute(path: 'modal', page: Modal),
      ],
    ),
    AutoRoute(path: '/login-one', page: LoginOne),
    AutoRoute(path: '/login-two', page: LoginTwo),
    AutoRoute(path: '/register-one', page: RegisterOne),
    AutoRoute(path: '/register-two', page: RegisterTwo),
    AutoRoute(path: '/recover-password', page: RecoverPasswordOne),
  ],
)
class $AppRouter {}
