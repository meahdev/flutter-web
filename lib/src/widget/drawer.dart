import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/streams.dart';
import 'package:admin_dashboard/src/widget/size_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> mainList = ['Dashboard', 'Calender', 'Text Editor'];
    List<String> componentsList = ['UI Elements', 'Icons'];
    List<String> extrasList = [
      'Layouts',
      'Authentication',
      'Extra Pages',
      'Email Templates',
      'Multi level'
    ];
    List<List<String>> componentsExpandList = [
      ['Buttons'],
      ['Iconly Broken', 'Iconly Bold']
    ];
    List<String> mainIconList = [
      IconlyBroken.home,
      IconlyBroken.calendar,
      IconlyBroken.edit,
    ];

    List<String> componentsIconList = [
      IconlyBroken.box,
      IconlyBroken.smileEmoji,
    ];
    List<String> extrasIconList = [
      IconlyBroken.bookSquare,
      IconlyBroken.archive,
      IconlyBroken.addSquare,
      IconlyBroken.bookMark,
      IconlyBroken.more
    ];

    return Container(
      height: MediaQuery.of(context).size.height,
      width: 250,
      color: ColorConst.drawerBG,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommanSizeBox(height: 10),
            _mainHeading(),
            _buildMainList(mainList, mainIconList),
            _componentsHeading(),
            _buildComponentsList(
              componentsExpandList,
              componentsList,
              componentsIconList,
            ),
            _extrasHeading(),
            _buildExtrasList(extrasList, extrasIconList),
            const CommanSizeBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _mainHeading() {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 40,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          Strings.main.toUpperCase(),
          style: const TextStyle(
            color: ColorConst.drawerTextColor,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Widget _buildMainList(List<String> mainList, List<String> mainIconList) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: mainList.length,
      itemBuilder: (context, index) {
        return StreamBuilder<String>(
            stream: selectedDrawerIndexController.stream,
            initialData: '',
            builder: (context, snapshot) {
              String snapshotData = snapshot.data ?? '';
              Color color = snapshotData == mainList[index]
                  ? ColorConst.drawerHover
                  : ColorConst.drawerIcon;
              return MouseRegion(
                onEnter: ((event) {
                  snapshotData != mainList[index]
                      ? selectedDrawerIndexController.sink.add(mainList[index])
                      : null;
                }),
                onExit: (event) {
                  snapshotData == mainList[index]
                      ? selectedDrawerIndexController.sink.add('')
                      : null;
                },
                child: ListTile(
                  mouseCursor: SystemMouseCursors.click,
                  leading: SvgPicture.asset(mainIconList[index], color: color),
                  title: Transform.translate(
                    offset: const Offset(-15, 0),
                    child: Text(
                      mainList[index],
                      style: TextStyle(
                        color: color,
                        fontSize: 15.7,
                      ),
                    ),
                  ),
                ),
              );
            });
      },
    );
  }

  Widget _componentsHeading() {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 40,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          Strings.components.toUpperCase(),
          style: const TextStyle(
            color: ColorConst.drawerTextColor,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Widget _buildComponentsList(List<List<String>> componentsExpandList,
      List<String> componentsList, List<String> componentsIconList) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: componentsList.length,
      itemBuilder: (context, index) {
        return StreamBuilder<String>(
            stream: selectedDrawerIndexController.stream,
            initialData: '',
            builder: (context, snapshot) {
              String snapshotData = snapshot.data ?? '';
              Color color = snapshotData == componentsList[index]
                  ? ColorConst.drawerHover
                  : ColorConst.drawerIcon;
              return MouseRegion(
                onEnter: (event) {
                  snapshotData != componentsList[index]
                      ? selectedDrawerIndexController.sink
                          .add(componentsList[index])
                      : null;
                },
                onExit: (event) {
                  snapshotData == componentsList[index]
                      ? selectedDrawerIndexController.sink.add('')
                      : null;
                },
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: ColorConst.transparent),
                  child: ExpansionTile(
                    collapsedIconColor: color,
                    iconColor: color,
                    leading: SvgPicture.asset(
                      componentsIconList[index],
                      color: color,
                    ),
                    title: Transform.translate(
                      offset: const Offset(-15, 0),
                      child: Text(
                        componentsList[index],
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
                                  selectedDrawerExpanseController.sink
                                      .add(null);
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
            });
      },
    );
  }

  Widget _extrasHeading() {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 40,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          Strings.extras.toUpperCase(),
          style: const TextStyle(
            color: ColorConst.drawerTextColor,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Widget _buildExtrasList(
      List<String> extrasList, List<String> extrasIconList) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: extrasList.length,
      itemBuilder: (context, index) {
        return StreamBuilder<String>(
          stream: selectedDrawerIndexController.stream,
          initialData: '',
          builder: (context, snapshot) {
            String snapshotData = snapshot.data ?? '';
            Color color = snapshotData == extrasList[index]
                ? ColorConst.drawerHover
                : ColorConst.drawerIcon;
            return MouseRegion(
              onEnter: (event) {
                snapshotData != extrasList[index]
                    ? selectedDrawerIndexController.sink.add(extrasList[index])
                    : null;
              },
              onExit: (event) {
                snapshotData == extrasList[index]
                    ? selectedDrawerIndexController.sink.add('')
                    : null;
              },
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: ColorConst.transparent),
                child: ExpansionTile(
                  collapsedIconColor: color,
                  iconColor: color,
                  leading:
                      SvgPicture.asset(extrasIconList[index], color: color),
                  title: Transform.translate(
                    offset: const Offset(-15, 0),
                    child: Text(
                      extrasList[index],
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
                      itemCount: extrasList.length,
                      itemBuilder: (context, index) {
                        return StreamBuilder<int?>(
                          stream: selectedDrawerExpanseController.stream,
                          initialData: null,
                          builder: (context, AsyncSnapshot<int?> snapshot) {
                            int? snapshotData = snapshot.data;
                            Color color = snapshotData == index
                                ? ColorConst.drawerHover
                                : ColorConst.drawerIcon;
                            return MouseRegion(
                              onEnter: (event) {
                                snapshotData != index
                                    ? selectedDrawerExpanseController.sink
                                        .add(index)
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
                                    extrasList[index],
                                    style: TextStyle(
                                      color: color,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
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
        );
      },
    );
  }
}
