import 'package:admin_dashboard/src/views/authentication/lock_screen/lock_screen_one.dart';
import 'package:admin_dashboard/src/views/authentication/lock_screen/lock_screen_two.dart';
import 'package:admin_dashboard/src/views/authentication/login/login_one.dart';
import 'package:admin_dashboard/src/views/authentication/login/login_two.dart';
import 'package:admin_dashboard/src/views/authentication/recover_password/recover_password_one.dart';
import 'package:admin_dashboard/src/views/authentication/recover_password/recover_password_two.dart';
import 'package:admin_dashboard/src/views/authentication/register/register_one.dart';
import 'package:admin_dashboard/src/views/authentication/register/register_two.dart';
import 'package:admin_dashboard/src/views/badge/badge.dart';
import 'package:admin_dashboard/src/views/buttons/button.dart';
import 'package:admin_dashboard/src/views/extra_pages/coming_soon.dart';
import 'package:admin_dashboard/src/views/extra_pages/directory.dart';
import 'package:admin_dashboard/src/views/extra_pages/error_404.dart';
import 'package:admin_dashboard/src/views/extra_pages/error_500.dart';
import 'package:admin_dashboard/src/views/extra_pages/faqs.dart';
import 'package:admin_dashboard/src/views/extra_pages/gallary.dart';
import 'package:admin_dashboard/src/views/extra_pages/invoice.dart';
import 'package:admin_dashboard/src/views/extra_pages/maintenance.dart';
import 'package:admin_dashboard/src/views/extra_pages/pricing.dart';
import 'package:admin_dashboard/src/views/extra_pages/timeline.dart';
import 'package:admin_dashboard/src/views/icons/cupertino_icon.dart';
import 'package:admin_dashboard/src/views/menu_bar.dart';
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
        RedirectRoute(path: '', redirectTo: 'faqs'),
        AutoRoute(path: 'dashboard', page: TestWidget),
        AutoRoute(path: 'toast', page: Toast),
        AutoRoute(path: 'button', page: Button),
        AutoRoute(path: 'rating', page: Rating),
        AutoRoute(path: 'badge', page: Badge),
        AutoRoute(path: 'cupertino-icon', page: CupertinoIcon),
        AutoRoute(path: 'timeline', page: TimelineScreen),
        AutoRoute(path: 'pricing', page: Pricing),
        AutoRoute(path: 'directory', page: DirectoryPage),
        AutoRoute(path: 'faqs', page: FAQs),
        AutoRoute(path: 'invoice', page: Invoice),
        AutoRoute(path: 'gallary', page: Gallary),
      ],
    ),
    AutoRoute(path: '/login-one', page: LoginOne),
    AutoRoute(path: '/login-two', page: LoginTwo),
    AutoRoute(path: '/register-one', page: RegisterOne),
    AutoRoute(path: '/register-two', page: RegisterTwo),
    AutoRoute(path: '/recover-password-one', page: RecoverPasswordOne),
    AutoRoute(path: '/recover-password-two', page: RecoverPasswordTwo),
    AutoRoute(path: '/lock-screen-one', page: LockScreenOne),
    AutoRoute(path: '/lock-screen-two', page: LockScreenTwo),
    AutoRoute(path: '/error-404', page: Error404),
    AutoRoute(path: '/error-500', page: Error500),
    AutoRoute(path: '/coming-soon', page: ComingSoon),
    AutoRoute(path: '/maintenance', page: Maintenance),
  ],
)
class $AppRouter {}
