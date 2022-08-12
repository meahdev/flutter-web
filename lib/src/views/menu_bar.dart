import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/routes/routes.gr.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/utils/routes.dart';
import 'package:admin_dashboard/src/utils/text_utils.dart';
import 'package:admin_dashboard/src/widget/end_drawer.dart';
import 'package:admin_dashboard/src/widget/expantion_tile.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldDrawerKey =
      GlobalKey<ScaffoldState>();

  Map<String, String> mainData = {
    'Dashboard': IconlyBroken.home,
    'Calender': IconlyBroken.calendar,
    'Text Editor': IconlyBroken.edit,
  };

  Map<String, String> componentData = {
    'UI Elements': IconlyBroken.box,
    'Icons': IconlyBroken.smileEmoji,
    'Forms': IconlyBroken.receipt
  };

  List<List<String>> componentsExpandList = [
    ['Toast', 'Buttons', 'Rating', 'Badge'],
    ['Cupertino Icons'],
    ['Form Elements', 'Form Validation'],
  ];

  final List<PageRouteInfo<dynamic>> _routes = const [
    TestWidget(),
    Button(),
    Rating(),
    Badge(),
    Toast(),
    CupertinoIcon(),
    ElementsForm(),
    ValidationForm()
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _routes,
      homeIndex: 0,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: Drawer(
            width: 280,
            child: SettingDrawer(scaffoldKey: _scaffoldKey),
          ),
          appBar: _appBar(),
          body: Scaffold(
            key: _scaffoldDrawerKey,
            drawerScrimColor: ColorConst.transparent,
            drawer: _sidebar(tabsRouter),
            body: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Responsive.isWeb(context)
                    ? _sidebar(tabsRouter)
                    : const SizedBox.shrink(),
                Expanded(
                  child: CustomScrollView(
                    controller: ScrollController(),
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FxBox.h20,
                                  Text(
                                    upperCase(tabsRouter.currentPath),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  FxBox.h8,
                                  _routesDeatils(tabsRouter),
                                  FxBox.h20,
                                  child,
                                  FxBox.h20,
                                  // _footer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                          children: <Widget>[
                            const Expanded(
                              child: SizedBox.shrink(),
                            ),
                            _footer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // child: SingleChildScrollView(
                  //   controller: ScrollController(),
                  //   child: Container(
                  //     padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         FxBox.h20,
                  //         Text(
                  //           upperCase(tabsRouter.currentPath),
                  //           style: Theme.of(context)
                  //               .textTheme
                  //               .bodyLarge!
                  //               .copyWith(fontWeight: FontWeight.bold),
                  //         ),
                  //         FxBox.h8,
                  //         _routesDeatils(tabsRouter),
                  //         FxBox.h20,
                  //         child,
                  //         FxBox.h20,
                  //         _footer(),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// appbar
  PreferredSizeWidget _appBar() => AppBar(
        elevation: 0.0,
        shadowColor: ColorConst.transparent,
        leadingWidth: 392,
        leading: Row(
          children: [
            StreamBuilder<bool>(
              initialData: false,
              builder: (context, AsyncSnapshot<bool> snapshots) {
                if (Responsive.isWeb(context)) {
                  _scaffoldDrawerKey.currentState!.closeDrawer();
                  return Container(
                    width: 240,
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
            Responsive.isWeb(context)
                ? const SizedBox.shrink()
                : MaterialButton(
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
                    child: const SvgIcon(icon: IconlyBroken.drawer),
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
                        padding: EdgeInsets.all(8),
                        child: SvgIcon(icon: IconlyBroken.search),
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
              maxRadius: 16,
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

  /// drawer / sidebar
  Widget _sidebar(TabsRouter tabsRouter) => Container(
        height: MediaQuery.of(context).size.height,
        width: 240,
        color: ColorConst.drawerBG,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FxBox.h8,
              // main
              _menuHeading(Strings.main),
              _menuList(tabsRouter: tabsRouter, items: mainData),
              // components
              _menuHeading(Strings.components),
              _menuList(
                tabsRouter: tabsRouter,
                items: componentData,
                isExpanded: true,
                children: componentsExpandList,
              ),
              FxBox.h20,
            ],
          ),
        ),
      );

  /// menu heading
  Widget _menuHeading(String title) {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 40,
      alignment: Alignment.centerLeft,
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          color: ColorConst.drawerTextColor,
          fontSize: 10,
        ),
      ),
    );
  }

  /// menu list
  Widget _menuList({
    required TabsRouter tabsRouter,
    required Map<String, String> items,
    bool isExpanded = false,
    List<List<String>> children = const [],
  }) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => FxHover(
        builder: (isHover) {
          Color color =
              isHover ? ColorConst.drawerHover : ColorConst.drawerIcon;
          if (isExpanded) {
            return FxExpansionTile(
              leading: SvgIcon(
                icon: items.values.elementAt(index),
                size: 16,
                color: color,
              ),
              title: Text(
                items.keys.elementAt(index),
                style: TextStyle(color: color, fontSize: 14.7),
              ),
              trailing: SvgIcon(
                icon: IconlyBroken.arrowDown,
                size: 16,
                color: color,
              ),
              children: [_subMenuList(children[index], tabsRouter)],
            );
          } else {
            return ListTile(
              leading: SvgIcon(
                icon: items.values.elementAt(index),
                size: 16,
                color: color,
              ),
              title: Text(
                items.keys.elementAt(index),
                style: TextStyle(color: color, fontSize: 14.7),
              ),
              mouseCursor: SystemMouseCursors.click,
              horizontalTitleGap: 0.0,
              onTap: () {
                tabsRouter.setActiveIndex(0);
                _scaffoldDrawerKey.currentState?.closeDrawer();
              },
            );
          }
        },
      ),
    );
  }

  /// sub menu list
  Widget _subMenuList(List<String> items, TabsRouter tabsRouter) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => FxHover(
        builder: (isHover) {
          Color color =
              isHover ? ColorConst.drawerHover : ColorConst.drawerIcon;
          return ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: -3),
            mouseCursor: SystemMouseCursors.click,
            contentPadding: const EdgeInsets.only(left: 52.0),
            title: Text(
              items[index],
              style: TextStyle(color: color, fontSize: 14),
            ),
            onTap: () {
              tabsRouter.setActiveIndex(getRouteIndex(items[index]));
              _scaffoldDrawerKey.currentState?.closeDrawer();
            },
          );
        },
      ),
    );
  }

  /// routes
  Widget _routesDeatils(TabsRouter tabsRouter) => Row(
        children: tabsRouter.currentPath == '/dashboard'
            ? []
            : [
                const InkWell(
                  mouseCursor: SystemMouseCursors.click,
                  child: Text('Admin'),
                ),
                const SvgIcon(icon: IconlyBroken.arrowRight3, size: 16),
                const InkWell(
                  mouseCursor: SystemMouseCursors.click,
                  child: Text('UI Elements'),
                ),
                const SvgIcon(icon: IconlyBroken.arrowRight3, size: 16),
                Text(upperCase(tabsRouter.currentPath)),
              ],
      );

  Widget _footer() => Container(
        color: Theme.of(context).colorScheme.onInverseSurface,
        height: 60,
        width: Responsive.isWeb(context)
            ? MediaQuery.of(context).size.width - 240
            : MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: const Text('Footer'),
      );
}
