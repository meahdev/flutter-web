import 'package:admin_dashboard/src/constant/color.dart';
import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: "Nunito",
      applyElevationOverlayColor: false,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      colorSchemeSeed: ColorConst.primary,
      appBarTheme: const AppBarTheme(
        elevation: 5.0,
      ),
      checkboxTheme: const CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
    );
  }
}
