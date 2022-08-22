import 'package:admin_dashboard/src/views/badge/badge.dart';
import 'package:admin_dashboard/src/views/buttons/button.dart';
import 'package:admin_dashboard/src/views/forms/elements_form.dart';
import 'package:admin_dashboard/src/views/forms/file_upload_form.dart';
import 'package:admin_dashboard/src/views/forms/mask_form.dart';
import 'package:admin_dashboard/src/views/forms/repeater_form.dart';
import 'package:admin_dashboard/src/views/forms/validation_form.dart';
import 'package:admin_dashboard/src/views/forms/wizard_form.dart';
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
        RedirectRoute(path: '', redirectTo: 'dashboard'),
        AutoRoute(path: 'dashboard', page: TestWidget),
        AutoRoute(path: 'toast', page: Toast),
        AutoRoute(path: 'button', page: Button),
        AutoRoute(path: 'rating', page: Rating),
        AutoRoute(path: 'badge', page: Badge),
        AutoRoute(path: 'cupertino-icon', page: CupertinoIcon),
        AutoRoute(path: 'form-elements', page: ElementsForm),
        AutoRoute(path: 'form-validation', page: ValidationForm),
        AutoRoute(path: 'form-uploads', page: FileUploadForm),
        AutoRoute(path: 'form-repeater', page: RepeaterForm),
        AutoRoute(path: 'form-mask', page: MaskForm),
        AutoRoute(path: 'form-wizard', page: WizardForm),
      ],
    ),
  ],
)
class $AppRouter {}
