import 'package:flutter/material.dart';
import 'package:flutterx/src/constant/color.dart';
import 'package:flutterx/src/utils/badge_utils.dart';

class Badge extends StatelessWidget {
  final Color? color;
  final String text;
  final TextStyle? style;
  final bool? isRoundedFromSide;
  final bool? isOutlined;
  final double? radius;

  const Badge({
    Key? key,
    this.color,
    required this.text,
    this.style,
    this.isRoundedFromSide = false,
    this.isOutlined = false,
    this.radius
  })  :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isOutlined == false ? color : FxColor.white,
            borderRadius: BorderRadius.circular(BadgeUtils.borderRadius(radius, isRoundedFromSide),),
            border: Border.all(color: color ?? Theme.of(context).primaryColor),
      ),
      child: Text(text, style: TextStyle(color: BadgeUtils.textColor(isOutlined, context, color)).merge(style),),);
  }
}
