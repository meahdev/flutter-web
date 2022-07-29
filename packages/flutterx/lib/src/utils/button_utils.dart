import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';
import 'button_color.dart';
import 'package:flutterx/src/constant/color.dart';

class Utils {
  static Color? colorText(bool isOutlineButton, BuildContext context,
      bool isHover, ButtonType? buttonType, color, textColor) {
    if (isOutlineButton) {
      if (buttonType != null) {
        if (isHover) {
          return getButtonTextColor(buttonType);
        } else {
          return getButtonColor(buttonType) ?? Theme.of(context).primaryColor;
        }
      } else {
        if (isHover) {
          return Theme.of(context).colorScheme.onPrimary;
        } else {
          return color ?? Theme.of(context).primaryColor;
        }
      }
    } else {
      if (buttonType != null) {
        return getButtonTextColor(buttonType) ??
            Theme.of(context).colorScheme.onPrimary;
      } else {
        return textColor ?? Theme.of(context).colorScheme.onPrimary;
      }
    }
  }

  static Color? backgroundColor(
    bool isOutlineButton,
    BuildContext context,
    ButtonType? buttonType,
    color,
  ) {
    if (isOutlineButton) {
      return FxColor.white;
    } else {
      if (buttonType != null) {
        return getButtonColor(buttonType) ?? Theme.of(context).primaryColor;
      } else {
        return color ?? Theme.of(context).primaryColor;
      }
    }
  }

  static ShapeBorder? buttonShape(
      double? radius,
      BackGroundType? backGroundType,
      double borderWidth,
      bool isOutlineButton,
      ButtonType? buttonType,
      BuildContext context,
      Color? color,
      bool roundedFromSide,
      double borderRadius,
      ShapeBorder? shape) {
    if (radius != null) {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: backGroundType == BackGroundType.light
            ? BorderSide(width: borderWidth, color: FxColor.dark)
            : isOutlineButton
                ? BorderSide(
                    width: borderWidth,
                    color: buttonType != null
                        ? getButtonColor(buttonType) ??
                            Theme.of(context).primaryColor
                        : color ?? Theme.of(context).primaryColor,
                  )
                : BorderSide.none,
      );
    } else {
      if (roundedFromSide) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36.0),
          side: isOutlineButton
              ? BorderSide(
                  width: borderWidth,
                  color: buttonType != null
                      ? getButtonColor(buttonType) ??
                          Theme.of(context).primaryColor
                      : color ?? Theme.of(context).primaryColor,
                )
              : BorderSide.none,
        );
      } else {
        if (isOutlineButton) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              width: borderWidth,
              color: buttonType != null
                  ? getButtonColor(buttonType) ?? Theme.of(context).primaryColor
                  : color ?? Theme.of(context).primaryColor,
            ),
          );
        } else {
          return shape;
        }
      }
    }
  }

  static Color? buttonRow(bool isOutlineButton, BuildContext context,
      bool isHover, ButtonType? buttonType, color, textColor) {
    if (isOutlineButton) {
      if (buttonType != null) {
        if (isHover) {
          return getButtonTextColor(buttonType);
        } else {
          return getButtonColor(buttonType) ?? Theme.of(context).primaryColor;
        }
      } else {
        if (isHover) {
          return Theme.of(context).colorScheme.onPrimary;
        } else {
          return color ?? Theme.of(context).primaryColor;
        }
      }
    } else {
      if (buttonType != null) {
        return getButtonTextColor(buttonType) ??
            Theme.of(context).colorScheme.onPrimary;
      } else {
        return textColor ?? Theme.of(context).colorScheme.onPrimary;
      }
    }
  }
}
