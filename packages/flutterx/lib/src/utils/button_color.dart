import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterx/src/constant/color.dart';
import 'package:flutterx/src/constant/enum.dart';

Color? getButtonColor(ButtonType? buttonType) {
  if (buttonType == ButtonType.error) {
    return FxColor.error;
  } else if (buttonType == ButtonType.info) {
    return FxColor.info;
  } else if (buttonType == ButtonType.success) {
    return FxColor.success;
  } else if (buttonType == ButtonType.warning) {
    return FxColor.warning;
  } else {
    return null;
  }
}

Color? getButtonHoverColor(ButtonType? buttonType) {
  if (buttonType == ButtonType.error) {
    return FxColor.errorDark;
  } else if (buttonType == ButtonType.info) {
    return FxColor.infoDark;
  } else if (buttonType == ButtonType.success) {
    return FxColor.successDark;
  } else if (buttonType == ButtonType.warning) {
    return FxColor.warningDark;
  } else {
    return null;
  }
}

Color? getButtonTextColor(ButtonType? buttonType) {
  if (buttonType == ButtonType.error) {
    return FxColor.white;
  } else if (buttonType == ButtonType.info) {
    return FxColor.white;
  } else if (buttonType == ButtonType.success) {
    return FxColor.white;
  } else if (buttonType == ButtonType.warning) {
    return FxColor.white;
  } else {
    return null;
  }
}

Color? type(BackGroundType? backGroundType) {
  if (backGroundType == BackGroundType.dark) {
    return FxColor.white;
  } else if (backGroundType == BackGroundType.white) {
    return FxColor.dark;
  } else if (backGroundType == BackGroundType.light) {
    return FxColor.white;
  } else {
    return null;
  }
}

Color? appleTextColor(BackGroundType? backGroundType) {
  if (backGroundType == BackGroundType.dark) {
    return FxColor.dark;
  } else if (backGroundType == BackGroundType.white) {
    return FxColor.white;
  } else if (backGroundType == BackGroundType.light) {
    return FxColor.dark;
  } else {
    return FxColor.white;
  }
}
