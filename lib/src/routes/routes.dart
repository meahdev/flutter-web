import 'package:admin_dashboard/src/views/buttons/button.dart';
import 'package:admin_dashboard/src/views/menu_bar.dart';
import 'package:admin_dashboard/src/views/rating/rating.dart';
import 'package:admin_dashboard/src/views/dashboard/dashboard.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MenuBar,
      children: [
        AutoRoute(path: 'dashboard', page: Dashboard),
        AutoRoute(path: 'button', page: Button),
        AutoRoute(path: 'rating', page: Rating),
      ],
    ),
  ],
)
class $AppRouter {}
