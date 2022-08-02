import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';
import 'package:flutterx/src/constant/color.dart';
import 'package:flutterx/src/constant/enum.dart';
import 'package:flutterx/src/utils/hover.dart';
import 'package:flutterx/src/widget/sizedbox.dart';

class ButtonFx extends StatelessWidget {
  final ButtonType? buttonType;
  final bool fullWidth;
  final Widget? icon;
  final bool isOutlineButton;
  final double borderWidth;
  final double borderRadius;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHighlightChanged;
  final MouseCursor? mouseCursor;
  final double? minWidth;
  final double? height;
  final FocusNode? focusNode;
  final bool autofocus;
  final String? text;
  final Color? textColor;
  final bool enableFeedback;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final double? hoverElevation;
  final Color? color;
  final Color? hoverColor;

  const ButtonFx({
    Key? key,
    this.buttonType,
    this.fullWidth = false,
    this.icon,
    this.isOutlineButton = false,
    this.borderWidth = 1.0,
    this.borderRadius = 52.0,
    required this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.mouseCursor,
    this.minWidth,
    this.height,
    this.autofocus = false,
    this.focusNode,
    this.text,
    this.textColor,
    this.enableFeedback = true,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
    this.elevation,
    this.hoverElevation,
    this.color,
    this.hoverColor,
  })  : assert((fullWidth && minWidth == null) ||
            (!fullWidth && minWidth != null) ||
            (!fullWidth && minWidth == null)),
        assert(text != null || icon != null),
        assert(elevation == null || elevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        super(key: key);

  const ButtonFx.whatsApp({
    Key? key,
    this.fullWidth = false,
    this.icon = const Icon(Icons.whatsapp_rounded),
    this.isOutlineButton = false,
    this.borderWidth = 1.0,
    this.borderRadius = 52.0,
    required this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.mouseCursor,
    this.minWidth,
    this.height,
    this.autofocus = false,
    this.focusNode,
    this.text = 'WhatsApp',
    this.enableFeedback = true,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
    this.elevation,
    this.hoverElevation,
  })  : assert((fullWidth && minWidth == null) ||
            (!fullWidth && minWidth != null) ||
            (!fullWidth && minWidth == null)),
        assert(elevation == null || elevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        buttonType = null,
        color = FxColor.whatsApp,
        hoverColor = FxColor.whatsAppDark,
        textColor = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return TranslateOnHover(
      builder: (isHover) {
        return MaterialButton(
          enableFeedback: enableFeedback,
          autofocus: autofocus,
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHighlightChanged: onHighlightChanged,
          mouseCursor: mouseCursor,
          elevation: isOutlineButton ? 0.0 : elevation,
          hoverElevation: isOutlineButton ? 0.0 : hoverElevation,
          padding: padding,
          colorBrightness: Theme.of(context).brightness,
          color: color ??
              _getButtonColor(colorScheme, buttonType, isOutlineButton),
          hoverColor: hoverColor ??
              _getHoverButtonColor(colorScheme, buttonType, isOutlineButton),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              width: borderWidth,
              color: isOutlineButton
                  ? color ?? _getButtonColor(colorScheme, buttonType, false)!
                  : color ?? _getButtonColor(colorScheme, buttonType, true)!,
            ),
          ),
          minWidth: icon != null
              ? 56.0
              : fullWidth
                  ? double.infinity
                  : minWidth,
          height: text == null ? 56.0 : height,
          textColor: isHover
              ? _getHoverFontColor(colorScheme, buttonType, isOutlineButton)
              : _getFontColor(colorScheme, buttonType, isOutlineButton),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon ?? FxBox.shrink,
              icon != null && text != null
                  ? SizedBox(width: gap)
                  : FxBox.shrink,
              text != null ? Flexible(child: Text(text!)) : FxBox.shrink,
            ],
          ),
        );
      },
    );
  }
}

Color? _getButtonColor(
    ColorScheme colorScheme, ButtonType? buttonType, bool isOutlineButton) {
  if (isOutlineButton) {
    return Colors.transparent;
  }
  if (buttonType == ButtonType.secondary) {
    return colorScheme.secondary;
  } else if (buttonType == ButtonType.warning) {
    return FxColor.warning;
  } else if (buttonType == ButtonType.error) {
    return FxColor.error;
  } else if (buttonType == ButtonType.success) {
    return FxColor.success;
  } else if (buttonType == ButtonType.info) {
    return FxColor.info;
  } else {
    return colorScheme.primary;
  }
}

Color? _getHoverButtonColor(
    ColorScheme colorScheme, ButtonType? buttonType, bool isOutlineButton) {
  if (isOutlineButton) {
    return _getButtonColor(colorScheme, buttonType, false);
  }
  if (buttonType == ButtonType.secondary) {
    return colorScheme.onSecondaryContainer;
  } else if (buttonType == ButtonType.warning) {
    return FxColor.warningDark;
  } else if (buttonType == ButtonType.error) {
    return FxColor.errorDark;
  } else if (buttonType == ButtonType.success) {
    return FxColor.successDark;
  } else if (buttonType == ButtonType.info) {
    return FxColor.infoDark;
  } else {
    if (colorScheme.brightness == Brightness.dark) {
      return colorScheme.inversePrimary;
    } else {
      return colorScheme.onPrimaryContainer;
    }
  }
}

Color? _getFontColor(
    ColorScheme colorScheme, ButtonType? buttonType, bool isOutlineButton) {
  if (isOutlineButton) {
    return _getButtonColor(colorScheme, buttonType, false);
  }
  if (buttonType == ButtonType.secondary) {
    return colorScheme.surface;
  } else if (buttonType == ButtonType.warning ||
      buttonType == ButtonType.info) {
    return FxColor.dark;
  } else if (buttonType == ButtonType.error ||
      buttonType == ButtonType.success) {
    return FxColor.white;
  } else {
    return colorScheme.onPrimary;
  }
}

Color? _getHoverFontColor(
    ColorScheme colorScheme, ButtonType? buttonType, bool isOutlineButton) {
  if (isOutlineButton) {
    return _getFontColor(colorScheme, buttonType, false);
  }
  if (buttonType == ButtonType.secondary) {
    return colorScheme.surface;
  } else if (buttonType == ButtonType.warning ||
      buttonType == ButtonType.info) {
    return FxColor.dark;
  } else if (buttonType == ButtonType.error ||
      buttonType == ButtonType.success) {
    return FxColor.white;
  } else {
    if (colorScheme.brightness == Brightness.dark) {
      return colorScheme.onPrimaryContainer;
    } else {
      return colorScheme.onPrimary;
    }
  }
}