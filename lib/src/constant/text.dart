import 'package:flutter/material.dart';

class ConstText {
  static lightText({
    required String text,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
        fontSize: fontSize ?? 15,
        color: color ?? Colors.black,
        fontWeight: fontWeight,
      ),
    );
  }

  static mediumText({
    required String text,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
        fontSize: fontSize ?? 20,
        color: color ?? Colors.black,
        fontWeight: fontWeight,
      ),
    );
  }

  static largeText({
    required String text,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 30,
        color: color ?? Colors.black,
        fontWeight: fontWeight,
      ),
    );
  }
}
