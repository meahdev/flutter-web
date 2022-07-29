import 'package:admin_dashboard/src/views/buttons/button.dart';
import 'package:admin_dashboard/src/views/menu_bar.dart';
import 'package:admin_dashboard/src/views/test.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MenuBar,
      children: [
        AutoRoute(path: 'test', page: TestWidget),
        AutoRoute(path: 'button', page: Button),
        // AutoRoute(path: 'settings', page: SettingsPage),
      ],
    ),
  ],
)
class $AppRouter {}
