import 'package:flutter/material.dart';

class ConstText {
  static lightText({
    required String text,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      softWrap: true,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize ?? 15,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }

  static mediumText({
    required String text,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      style: TextStyle(
        fontSize: fontSize ?? 20,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }

  static largeText({
    required String text,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize ?? 30,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
