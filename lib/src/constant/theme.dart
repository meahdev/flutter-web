import 'package:admin_dashboard/src/constant/color.dart';
import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    isDark = isDarkTheme;

    return ThemeData(
      useMaterial3: true,
      fontFamily: "Nunito",
      applyElevationOverlayColor: false,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      colorSchemeSeed: ColorConst.primary,
      appBarTheme: const AppBarTheme(
        elevation: 5.0,
      ),
    );
  }
}

bool isDark = false;
