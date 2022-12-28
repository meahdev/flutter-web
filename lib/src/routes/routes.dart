import 'package:admin_dashboard/src/views/authentication/lock_screen/lock_screen_one.dart';
import 'package:admin_dashboard/src/views/authentication/lock_screen/lock_screen_two.dart';
import 'package:admin_dashboard/src/views/authentication/login/login_one.dart';
import 'package:admin_dashboard/src/views/authentication/login/login_two.dart';
import 'package:admin_dashboard/src/views/authentication/recover_password/recover_password_one.dart';
import 'package:admin_dashboard/src/views/authentication/recover_password/recover_password_two.dart';
import 'package:admin_dashboard/src/views/authentication/register/register_one.dart';
import 'package:admin_dashboard/src/views/authentication/register/register_two.dart';
import 'package:admin_dashboard/src/views/calender/calender.dart';
import 'package:admin_dashboard/src/views/email_templates/alert_email.dart';
import 'package:admin_dashboard/src/views/email_templates/basic_email.dart';
import 'package:admin_dashboard/src/views/email_templates/billing_email.dart';
import 'package:admin_dashboard/src/views/charts/chartjs.dart';
import 'package:admin_dashboard/src/views/charts/chartist.dart';
import 'package:admin_dashboard/src/views/charts/morris_chart.dart';
import 'package:admin_dashboard/src/views/extra_pages/coming_soon.dart';
import 'package:admin_dashboard/src/views/extra_pages/directory.dart';
import 'package:admin_dashboard/src/views/extra_pages/error_404.dart';
import 'package:admin_dashboard/src/views/extra_pages/error_500.dart';
import 'package:admin_dashboard/src/views/extra_pages/faqs.dart';
import 'package:admin_dashboard/src/views/extra_pages/gallery.dart';
import 'package:admin_dashboard/src/views/extra_pages/invoice.dart';
import 'package:admin_dashboard/src/views/extra_pages/maintenance.dart';
import 'package:admin_dashboard/src/views/extra_pages/pricing.dart';
import 'package:admin_dashboard/src/views/extra_pages/timeline.dart';
import 'package:admin_dashboard/src/views/forms/elements_form.dart';
import 'package:admin_dashboard/src/views/forms/file_upload_form.dart';
import 'package:admin_dashboard/src/views/forms/mask_form.dart';
import 'package:admin_dashboard/src/views/forms/repeater_form.dart';
import 'package:admin_dashboard/src/views/forms/validation_form.dart';
import 'package:admin_dashboard/src/views/forms/wizard_form.dart';
import 'package:admin_dashboard/src/views/map/map.dart';
import 'package:admin_dashboard/src/views/menu_bar.dart';
import 'package:admin_dashboard/src/views/dashboard/dashboard.dart';
import 'package:admin_dashboard/src/views/tables/basic_table.dart';
import 'package:admin_dashboard/src/views/tables/data_tables.dart';
import 'package:admin_dashboard/src/views/tables/editable_table.dart';
import 'package:admin_dashboard/src/views/tables/responsive_table.dart';
import 'package:admin_dashboard/src/views/ui_elements/alert/alert_dialog.dart';
import 'package:admin_dashboard/src/views/ui_elements/badge/badge.dart';
import 'package:admin_dashboard/src/views/ui_elements/buttons/button.dart';
import 'package:admin_dashboard/src/views/ui_elements/carousel/carousel.dart';
import 'package:admin_dashboard/src/views/ui_elements/loader/loader.dart';
import 'package:admin_dashboard/src/views/ui_elements/modal/modal.dart';
import 'package:admin_dashboard/src/views/ui_elements/rating/rating.dart';
import 'package:admin_dashboard/src/views/ui_elements/tabbar/tabs_screen.dart';
import 'package:admin_dashboard/src/views/ui_elements/toast/toast.dart';
import 'package:admin_dashboard/src/views/ui_elements/videos/video_screen.dart';
import 'package:admin_dashboard/src/views/user/user_profile.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MenuBar,
      children: [
        RedirectRoute(path: '', redirectTo: 'form-wizard'),
        AutoRoute(path: 'dashboard', page: Dashboard),
        AutoRoute(path: 'calendar', page: Calendar),
        AutoRoute(path: 'map', page: GoogleMaps),
        AutoRoute(path: 'toast', page: Toast),
        AutoRoute(path: 'buttons', page: Button),
        AutoRoute(path: 'rating', page: Rating),
        AutoRoute(path: 'badge', page: Badge),
        AutoRoute(path: 'alert-dialog', page: AlertDialogBox),
        AutoRoute(path: 'modal', page: Modal),
        AutoRoute(path: 'loaders', page: Loaders),
        AutoRoute(path: 'tabs', page: TabScreen),
        AutoRoute(path: 'basic-action-email', page: BasicEmail),
        AutoRoute(path: 'alert-email', page: AlertEmail),
        AutoRoute(path: 'billing-email', page: BillingEmail),
        AutoRoute(path: 'morris-chart', page: MorrisChart),
        AutoRoute(path: 'chartist-chart', page: ChartListChart),
        AutoRoute(path: 'chartjs-chart', page: ChartJsChart),
        AutoRoute(path: 'basic-table', page: BasicTable),
        AutoRoute(path: 'data-table', page: Datatable),
        AutoRoute(path: 'responsive-table', page: ResponsiveTable),
        AutoRoute(path: 'editable-table', page: EditableTable),
        AutoRoute(path: 'timeline', page: TimelineScreen),
        AutoRoute(path: 'pricing', page: Pricing),
        AutoRoute(path: 'directory', page: DirectoryPage),
        AutoRoute(path: 'faqs', page: FAQs),
        AutoRoute(path: 'invoice', page: Invoice),
        AutoRoute(path: 'gallery', page: Gallery),
        AutoRoute(path: 'carousel', page: Carousel),
        AutoRoute(path: 'form-elements', page: ElementsForm),
        AutoRoute(path: 'form-validation', page: ValidationForm),
        AutoRoute(path: 'form-file-upload', page: FileUploadForm),
        AutoRoute(path: 'form-repeater', page: RepeaterForm),
        AutoRoute(path: 'form-mask', page: MaskForm),
        AutoRoute(path: 'form-wizard', page: WizardForm),
        AutoRoute(path: 'video-player', page: VideoScreen),
        AutoRoute(path: 'user-profile', page: UserProfile),
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
