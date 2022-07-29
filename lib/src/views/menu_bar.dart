import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/streams.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/routes/routes.gr.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/drawer.dart';
import 'package:admin_dashboard/src/widget/end_drawer.dart';
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
  };

  List<List<String>> componentsExpandList = [
    ['Buttons'],
    ['Iconly Broken', 'Iconly Bold']
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [TestWidget(), Button()],
      homeIndex: 0,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: Drawer(
            width: 250,
            child: SettingDrawer(scaffoldKey: _scaffoldKey),
          ),
          appBar: _appBar(),
          body: Scaffold(
            key: _scaffoldDrawerKey,
            drawerScrimColor: ColorConst.transparent,
            // drawer: const DrawerWidget(),
            drawer: _sidebar(tabsRouter),
            body: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Responsive.isWeb(context)
                    ? _sidebar(tabsRouter)
                    : const SizedBox.shrink(),
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
                          child,
                        ],
                      ),
                    ),
                  ),
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

  Widget _sidebar(TabsRouter tabsRouter) => Container(
        height: MediaQuery.of(context).size.height,
        width: 240,
        color: ColorConst.drawerBG,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FxBox.h10,
              // main
              _menuHeading(Strings.main),
              _mainList(tabsRouter),
              // components
              _menuHeading(Strings.components),
              _componentList(tabsRouter),
              // _buildComponentsList(
              //   componentsExpandList,
              //   componentsList,
              //   componentsIconList,
              // ),
              // _extrasHeading(),
              // _buildExtrasList(extrasList, extrasIconList),
              FxBox.h20,
            ],
          ),
        ),
      );

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

  Widget _mainList(TabsRouter tabsRouter) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: mainData.length,
      itemBuilder: (context, index) => StreamBuilder<String>(
        stream: selectedDrawerIndexController.stream,
        initialData: '',
        builder: (context, snapshot) {
          String snapshotData = snapshot.data ?? '';
          Color color = snapshotData == mainData.keys.elementAt(index)
              ? ColorConst.drawerHover
              : ColorConst.drawerIcon;
          return MouseRegion(
            onEnter: ((event) {
              snapshotData != mainData.keys.elementAt(index)
                  ? selectedDrawerIndexController.sink
                      .add(mainData.keys.elementAt(index))
                  : null;
            }),
            onExit: (event) {
              snapshotData == mainData.keys.elementAt(index)
                  ? selectedDrawerIndexController.sink.add('')
                  : null;
            },
            child: ListTile(
              mouseCursor: SystemMouseCursors.click,
              leading: SvgIcon(icon: mainData.values.elementAt(index)),
              title: Transform.translate(
                offset: const Offset(-15, 0),
                child: Text(
                  mainData.keys.elementAt(index),
                  style: TextStyle(
                    color: color,
                    fontSize: 15.7,
                  ),
                ),
              ),
              onTap: () {
                tabsRouter.setActiveIndex(0);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _componentList(TabsRouter tabsRouter) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: componentData.length,
      itemBuilder: (context, index) => StreamBuilder<String>(
        stream: selectedDrawerIndexController.stream,
        initialData: '',
        builder: (context, snapshot) {
          String snapshotData = snapshot.data ?? '';
          Color color = snapshotData == componentData.keys.elementAt(index)
              ? ColorConst.drawerHover
              : ColorConst.drawerIcon;
          return MouseRegion(
            onEnter: ((event) {
              snapshotData != componentData.keys.elementAt(index)
                  ? selectedDrawerIndexController.sink
                      .add(componentData.keys.elementAt(index))
                  : null;
            }),
            onExit: (event) {
              snapshotData == componentData.keys.elementAt(index)
                  ? selectedDrawerIndexController.sink.add('')
                  : null;
            },
            child: Theme(
              data: Theme.of(context)
                  .copyWith(dividerColor: ColorConst.transparent),
              child: ExpansionTile(
                collapsedIconColor: color,
                iconColor: color,
                leading: SvgIcon(icon: componentData.values.elementAt(index)),
                title: Transform.translate(
                  offset: const Offset(-15, 0),
                  child: Text(
                    componentData.keys.elementAt(index),
                    style: TextStyle(
                      color: color,
                      fontSize: 15.7,
                    ),
                  ),
                ),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: componentsExpandList[index].length,
                    itemBuilder: (context, index1) {
                      return StreamBuilder<int?>(
                        stream: selectedDrawerExpanseController.stream,
                        initialData: null,
                        builder: (context, AsyncSnapshot<int?> snapshot) {
                          int? snapshotData = snapshot.data;
                          Color color = snapshotData == index1
                              ? ColorConst.drawerHover
                              : ColorConst.drawerIcon;
                          return MouseRegion(
                            cursor: SystemMouseCursors.zoomIn,
                            onEnter: (event) {
                              snapshotData != index1
                                  ? selectedDrawerExpanseController.sink
                                      .add(index1)
                                  : null;
                            },
                            onExit: (event) {
                              selectedDrawerExpanseController.sink.add(null);
                            },
                            child: ListTile(
                              mouseCursor: SystemMouseCursors.click,
                              title: Transform.translate(
                                offset: const Offset(38, 0),
                                child: Text(
                                  componentsExpandList[index][index1],
                                  style: TextStyle(
                                    color: color,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              onTap: () {
                                tabsRouter.setActiveIndex(1);
                              },
                            ),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

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
