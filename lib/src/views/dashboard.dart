import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/buttons/button.dart';
import 'package:admin_dashboard/src/widget/drawer.dart';
import 'package:admin_dashboard/src/widget/end_drawer.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldDrawerKey =
      GlobalKey<ScaffoldState>();

  // @override
  // void dispose() {
  //   selectedDrawerIndexController.close();
  //   selectedDrawerExpanseController.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        width: 250,
        child: SettingDrawer(scaffoldKey: _scaffoldKey),
      ),
      appBar: _appBar(),
      body: Scaffold(
        key: _scaffoldDrawerKey,
        // backgroundColor: ColorConst.scaffold,
        drawerScrimColor: ColorConst.transparent,
        drawer: const DrawerWidget(),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sidebar(),
            Expanded(
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60.0,
                    vertical: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Buttons',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      FxBox.h8,
                      _routes(),
                      FxBox.h10,
                      const Button(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// appbar
  PreferredSizeWidget _appBar() => AppBar(
        elevation: 0.0,
        shadowColor: ColorConst.transparent,
        leadingWidth: 302,
        leading: Row(
          children: [
            StreamBuilder<bool>(
              // stream: navigationRailController.stream,
              initialData: false,
              builder: (context, AsyncSnapshot<bool> snapshots) {
                if (Responsive.isWeb(context)) {
                  _scaffoldDrawerKey.currentState!.closeDrawer();
                  return Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(horizontal: 61),
                    height: double.infinity,
                    color: ColorConst.drawerBG,
                    child:
                        Image.asset(Images.logo, height: 18.0, width: 115.55),
                  );
                }
                return Container(
                  width: 70,
                  padding: const EdgeInsets.all(18),
                  height: double.infinity,
                  color: ColorConst.drawerBG,
                  child: Image.asset(
                    Images.logosm,
                    height: 22,
                    width: 30.8,
                  ),
                );
              },
            ),
            MaterialButton(
              height: double.infinity,
              minWidth: 60,
              hoverColor: ColorConst.transparent,
              onPressed: () async {
                if (Responsive.isMobile(context) ||
                    Responsive.isTablet(context)) {
                  if (_scaffoldDrawerKey.currentState!.isDrawerOpen) {
                    _scaffoldDrawerKey.currentState!.closeDrawer();
                  } else {
                    _scaffoldDrawerKey.currentState!.openDrawer();
                  }
                } else if (Responsive.isWeb(context)) {
                  _scaffoldDrawerKey.currentState!.closeDrawer();
                }
              },
              child: const Icon(Icons.view_list_sharp),
            )
          ],
        ),
        actions: [
          Responsive.isMobile(context) || Responsive.isTablet(context)
              ? MaterialButton(
                  height: double.infinity,
                  minWidth: 60,
                  hoverColor: ColorConst.transparent,
                  onPressed: () {},
                  child: const SvgIcon(icon: IconlyBroken.search),
                )
              : Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: 180,
                  child: TextField(
                    cursorWidth: 1,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hoverColor: ColorConst.transparent,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(12, 10, 0, 4),
                      hintText: Strings.searchHint,
                      hintStyle: const TextStyle(fontSize: 14),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(6),
                        child: SvgIcon(
                          icon: IconlyBroken.search,
                        ),
                      ),
                      // fillColor: ColorConst.textFieldBG,
                      isCollapsed: true,
                    ),
                  ),
                ),
          MaterialButton(
            height: double.infinity,
            minWidth: 60,
            hoverColor: ColorConst.transparent,
            onPressed: () {},
            child: const SvgIcon(icon: IconlyBroken.notification),
          ),
          MaterialButton(
            height: double.infinity,
            minWidth: 60,
            hoverColor: ColorConst.transparent,
            onPressed: () {},
            child: const CircleAvatar(
              maxRadius: 18,
              backgroundImage: NetworkImage(Images.profileImage),
            ),
          ),
          MaterialButton(
            height: double.infinity,
            minWidth: 60,
            hoverColor: ColorConst.transparent,
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            child: const SvgIcon(icon: IconlyBroken.setting),
          ),
        ],
      );

  Widget _sidebar() => Responsive.isWeb(context)
      ? const DrawerWidget()
      : const SizedBox.shrink();

  Widget _routes() => Row(
        children: const [
          Text('Admin'),
          SvgIcon(icon: IconlyBroken.arrowRight3),
          Text('UI Elements'),
          SvgIcon(icon: IconlyBroken.arrowRight3),
          Text('Buttons'),
        ],
      );
}
