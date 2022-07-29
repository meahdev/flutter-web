import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterx/src/constant/color.dart';
import 'package:flutterx/src/constant/enum.dart';

Color? getBadgeColor(BadgeType? badgeType) {
  if (badgeType == BadgeType.error) {
    return FxColor.error;
  } else if (badgeType == BadgeType.info) {
    return FxColor.info;
  } else if (badgeType == BadgeType.success) {
    return FxColor.success;
  } else if (badgeType == BadgeType.warning) {
    return FxColor.warning;
  } else {
    return null;
  }
}