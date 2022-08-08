import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Badge extends StatelessWidget {
  const Badge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _badge(context, false),
              FxBox.h12,
              _badge(context, true),
            ],
          )
        : Row(
          mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: _badge(context, false)),
              FxBox.w12,
              Expanded(child: _badge(context, true)),
            ],
          );
  }

  Widget _badge(BuildContext context, bool isOutline) {
    return SizedBox(
      width: Responsive.isMobile(context) ? double.infinity : null,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isOutline ? 'Outline badge' : 'Simple badge',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              FxBox.h16,
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  FxBadge(text: 'Primary', isOutlined: isOutline),
                  FxBadge(
                    text: 'Success',
                    color: ColorConst.success,
                    isOutlined: isOutline,
                  ),
                  FxBadge(
                    text: 'Error',
                    color: ColorConst.error,
                    isOutlined: isOutline,
                  ),
                  FxBadge(
                    text: 'Info',
                    color: ColorConst.infoDark,
                    isOutlined: isOutline,
                  ),
                  FxBadge(
                    text: 'Badge',
                    color: Theme.of(context).colorScheme.tertiary,
                    isOutlined: isOutline,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
