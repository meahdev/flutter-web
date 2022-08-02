import 'dart:math' as math;
import 'dart:ui' show lerpDouble;
import 'package:flutter/material.dart';
import 'package:flutterx/src/constant/color.dart';
import 'package:flutterx/src/constant/enum.dart';
import 'package:flutterx/src/constant/icons.dart';
import 'package:flutterx/src/utils/button_color.dart';
import 'package:flutterx/src/utils/button_utils.dart';
import 'package:flutterx/src/utils/hover.dart';
import 'package:flutterx/src/widget/widget.dart';

class FxButton extends StatelessWidget {
  final ButtonType? buttonType;
  final bool fullWidth;
  final bool roundedFromSide;
  final IconData? icon;
  final double? iconSize;
  final bool isOutlineButton;
  final double borderWidth;
  final double borderRadius;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHighlightChanged;
  final MouseCursor? mouseCursor;
  final ButtonTextTheme? textTheme;
  final Color? textColor;
  final Color? disabledTextColor;
  final Color? color;
  final Color? disabledColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Brightness? colorBrightness;
  final double? elevation;
  final double? focusElevation;
  final double? hoverElevation;
  final double? highlightElevation;
  final double? disabledElevation;
  final EdgeInsetsGeometry? padding;
  final VisualDensity? visualDensity;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final FocusNode? focusNode;
  final bool autofocus;
  final MaterialTapTargetSize? materialTapTargetSize;
  final Duration? animationDuration;
  final double? minWidth;
  final double? height;
  final bool enableFeedback;
  final Widget? child;
  final double? radius;
  final BackGroundType? backGroundType;
  final bool? isRectangle;

  const FxButton(
      {Key? key,
      this.buttonType,
      this.fullWidth = false,
      this.roundedFromSide = false,
      this.icon,
      this.iconSize,
      this.isOutlineButton = false,
      this.borderWidth = 1.0,
      this.borderRadius = 2.0,
      required this.onPressed,
      this.onLongPress,
      this.onHighlightChanged,
      this.mouseCursor,
      this.textTheme,
      this.textColor,
      this.disabledTextColor,
      this.color,
      this.disabledColor,
      this.focusColor,
      this.hoverColor,
      this.highlightColor,
      this.splashColor,
      this.colorBrightness,
      this.elevation,
      this.focusElevation,
      this.hoverElevation,
      this.highlightElevation,
      this.disabledElevation,
      this.padding,
      this.visualDensity,
      this.shape,
      this.clipBehavior = Clip.none,
      this.focusNode,
      this.autofocus = false,
      this.materialTapTargetSize,
      this.animationDuration,
      this.minWidth,
      this.height,
      this.enableFeedback = true,
      this.child,
      this.radius})
      : assert((fullWidth && minWidth == null) ||
            (!fullWidth && minWidth != null) ||
            (!fullWidth && minWidth == null)),
        assert((roundedFromSide && shape == null) ||
            (!roundedFromSide && shape != null) ||
            (!roundedFromSide && shape == null)),
        assert(child != null || icon != null),
        assert((isOutlineButton && shape == null) ||
            (!isOutlineButton && shape != null) ||
            (!isOutlineButton && shape == null)),
        assert(elevation == null || elevation >= 0.0),
        assert(focusElevation == null || focusElevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
        backGroundType = null,
        isRectangle = null,
        super(key: key);

  const FxButton.facebook({
    Key? key,
    this.fullWidth = false,
    this.roundedFromSide = false,
    this.iconSize,
    this.isOutlineButton = false,
    this.borderWidth = 1.0,
    this.borderRadius = 2.0,
    required this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.mouseCursor,
    this.textTheme,
    this.disabledTextColor,
    this.disabledColor,
    this.focusColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.padding,
    this.visualDensity,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.materialTapTargetSize,
    this.animationDuration,
    this.minWidth,
    this.height,
    this.enableFeedback = true,
    this.radius,
  })  : assert((fullWidth && minWidth == null) ||
            (!fullWidth && minWidth != null) ||
            (!fullWidth && minWidth == null)),
        assert((roundedFromSide && shape == null) ||
            (!roundedFromSide && shape != null) ||
            (!roundedFromSide && shape == null)),
        assert((isOutlineButton && shape == null) ||
            (!isOutlineButton && shape != null) ||
            (!isOutlineButton && shape == null)),
        assert(elevation == null || elevation >= 0.0),
        assert(focusElevation == null || focusElevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
        icon = KIcons.facebook,
        child = const Text('Facebook'),
        color = FxColor.facebook,
        textColor = FxColor.socialButtonTextColor,
        hoverColor = FxColor.facebookDark,
        buttonType = null,
        backGroundType = null,
        isRectangle = null,
        super(key: key);

  const FxButton.whatsapp({
    Key? key,
    this.fullWidth = false,
    this.roundedFromSide = false,
    this.iconSize,
    this.isOutlineButton = false,
    this.borderWidth = 1.0,
    this.borderRadius = 2.0,
    required this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.mouseCursor,
    this.textTheme,
    this.disabledTextColor,
    this.disabledColor,
    this.focusColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.padding,
    this.visualDensity,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.materialTapTargetSize,
    this.animationDuration,
    this.minWidth,
    this.height,
    this.enableFeedback = true,
    this.radius,
  })  : assert((fullWidth && minWidth == null) ||
            (!fullWidth && minWidth != null) ||
            (!fullWidth && minWidth == null)),
        assert((roundedFromSide && shape == null) ||
            (!roundedFromSide && shape != null) ||
            (!roundedFromSide && shape == null)),
        assert((isOutlineButton && shape == null) ||
            (!isOutlineButton && shape != null) ||
            (!isOutlineButton && shape == null)),
        assert(elevation == null || elevation >= 0.0),
        assert(focusElevation == null || focusElevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
        icon = KIcons.whatsapp,
        child = const Text('whatsapp'),
        color = FxColor.whatsApp,
        textColor = FxColor.socialButtonTextColor,
        hoverColor = FxColor.whatsAppDark,
        buttonType = null,
        backGroundType = null,
        isRectangle = null,
        super(key: key);

  FxButton.apple({
    Key? key,
    this.fullWidth = false,
    this.roundedFromSide = false,
    this.iconSize,
    this.borderWidth = 1.0,
    this.borderRadius = 2.0,
    required this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.mouseCursor,
    this.textTheme,
    this.disabledTextColor,
    this.disabledColor,
    this.focusColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.padding,
    this.visualDensity,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.materialTapTargetSize,
    this.animationDuration,
    this.minWidth,
    this.height,
    this.enableFeedback = true,
    this.backGroundType,
    this.isRectangle = false,
    this.isOutlineButton = false,
  })  : assert((fullWidth && minWidth == null) ||
            (!fullWidth && minWidth != null) ||
            (!fullWidth && minWidth == null)),
        assert((roundedFromSide && shape == null) ||
            (!roundedFromSide && shape != null) ||
            (!roundedFromSide && shape == null)),
        assert(elevation == null || elevation >= 0.0),
        assert(focusElevation == null || focusElevation >= 0.0),
        assert(hoverElevation == null || hoverElevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
        icon = KIcons.apple,
        child = const Text('Sign in with Apple'),
        color = backGroundType != null ? type(backGroundType) : FxColor.apple,
        textColor = backGroundType != null
            ? appleTextColor(backGroundType)
            : FxColor.socialButtonTextColor,
        buttonType = null,
        radius = isRectangle == false
            ? roundedFromSide == true
                ? 36.0
                : 4.0
            : 0,
        hoverColor =
            backGroundType != null ? type(backGroundType) : FxColor.appleDark,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;
    return TranslateOnHover(builder: (isHover) {
      return MaterialButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHighlightChanged: onHighlightChanged,
        mouseCursor: mouseCursor,
        textTheme: textTheme,
        textColor: Utils.colorText(
            isOutlineButton, context, isHover, buttonType, color, textColor),

        /// ButtonText Color
        disabledTextColor: disabledTextColor,
        color: Utils.backgroundColor(
                isOutlineButton,
                context,
                buttonType,
                color,
              ),

        /// Background Color
        disabledColor: disabledColor ??
            Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
        focusColor: focusColor,
        hoverColor: isOutlineButton
            ? buttonType != null
                ? getButtonColor(buttonType, context) ?? Theme.of(context).primaryColor
                : color ?? Theme.of(context).primaryColor
            : buttonType != null
                ? getButtonHoverColor(buttonType, context) ??
                    Theme.of(context).primaryColorDark
                : hoverColor ?? Theme.of(context).primaryColorDark,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorBrightness: colorBrightness,
        elevation: elevation,
        focusElevation: focusElevation,
        hoverElevation: hoverElevation,
        highlightElevation: highlightElevation,
        disabledElevation: disabledElevation,
        padding: padding,
        visualDensity: visualDensity,
        shape: Utils.buttonShape(
            radius,
            backGroundType,
            borderWidth,
            isOutlineButton,
            buttonType,
            context,
            color,
            roundedFromSide,
            borderRadius,
            shape),

        /// Shape Of Button
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        materialTapTargetSize: materialTapTargetSize,
        animationDuration: animationDuration,
        minWidth: child == null
            ? 52.0
            : fullWidth
                ? double.infinity
                : minWidth,
        height: child == null ? 52.0 : height,
        enableFeedback: enableFeedback,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon != null
                ? Icon(
                    icon,
                    color: Utils.buttonRow(isOutlineButton, context, isHover,
                        buttonType, color, textColor),
                    size: iconSize,
                  )
                : FxBox.shrink,

            ///ButtonRow Comes From
            icon != null && child != null ? SizedBox(width: gap) : FxBox.shrink,
            child != null ? Flexible(child: child!) : FxBox.shrink,
          ],
        ),
      );
    });
  }
}
