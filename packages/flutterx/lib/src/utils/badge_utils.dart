import 'package:flutter/material.dart';

class BadgeUtils {

  static textColor(bool? isOutlined, BuildContext context, Color? color) {
    if (isOutlined == true && color != null) {
      return color;
    } else if (isOutlined == true && color == null) {
      return Theme.of(context).colorScheme.primary;
    }
    return Theme.of(context).colorScheme.onPrimary;
  }

  static borderRadius(double? radius, bool? isRoundedFromSide) {
    if (radius != null) {
      return radius;
    } else if (isRoundedFromSide == true) {
      return 36;
    }
    return 4;
  }
}
