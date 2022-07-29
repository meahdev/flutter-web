import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/provider/theme/bloc/bloc/theme_mode_bloc.dart';
import 'package:admin_dashboard/src/utils/hive/hive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterx/flutterx.dart';

class SettingDrawer extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SettingDrawer({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  State<SettingDrawer> createState() => _SettingDrawerState();
}

class _SettingDrawerState extends State<SettingDrawer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  Strings.settings,
                  style: TextStyle(
                    fontSize: 17,
                    color: ColorConst.endDrawerText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      widget.scaffoldKey.currentState!.closeEndDrawer();
                    },
                    child: SvgPicture.asset(IconlyBroken.closeSquare)),
              ],
            ),
          ),
          const Divider(height: 0),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              Strings.chooseLayouts,
              style: TextStyle(
                fontSize: 14,
                color: ColorConst.endDrawerText,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                FxBox.h10,
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(
                      width: 1,
                      color: ColorConst.endDrawerImageBorder,
                    ),
                  ),
                  child: Image.network(
                    Images.lightTheme,
                    fit: BoxFit.cover,
                  ),
                ),
                FxBox.h10,
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(
                      width: 1,
                      color: ColorConst.endDrawerImageBorder,
                    ),
                  ),
                  child: Image.network(
                    Images.lightTheme,
                    fit: BoxFit.cover,
                  ),
                ),
                FxBox.h10,
                Row(
                  children: [
                    BlocBuilder<ThemeModeBloc, ThemeModeState>(
                      builder: (context, state) {
                        return CupertinoSwitch(
                          value: HiveUtils.isContainKey(HiveKeys.themeMode)
                              ? HiveUtils.get(HiveKeys.themeMode)
                              : false,
                          onChanged: (value) {
                            HiveUtils.set(HiveKeys.themeMode, value);
                            themeModeBloc
                                .add(ThemeModeEvent.changeTheme(value));
                          },
                        );
                      },
                    ),
                    const Text(
                      Strings.darkMode,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ColorConst.endDrawerText,
                      ),
                    )
                  ],
                ),
                FxBox.h10,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
