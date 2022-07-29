import 'package:admin_dashboard/src/constant/color.dart';
import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: "Nunito",
      applyElevationOverlayColor: false,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      // colorSchemeSeed: ColorConst.drawerBG,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor:
            isDarkTheme ? ColorConst.appbarDarkBG : ColorConst.appbarLightBG,
      ),
      dividerColor: isDarkTheme ? ColorConst.white : ColorConst.black,
      drawerTheme: DrawerThemeData(
        scrimColor: isDarkTheme
            ? ColorConst.endDrawerDarkScrim
            : ColorConst.endDrawerLightScrim,
        elevation: 0.0,
        backgroundColor: isDarkTheme ? ColorConst.black : ColorConst.white,
      ),
    );
  }
}
