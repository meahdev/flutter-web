import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterx/src/constant/enum.dart';
import 'package:flutterx/src/utils/toast_offset.dart';

import 'toast_animation.dart';
import 'toast_provider.dart';

class FxToast {
  static Timer? toastTimer;
  static OverlayEntry? _overlayEntry;

  /// Use [ToastWithColor] or [ToastWithoutColor] for ToastProvider
  static void showToast({
    required BuildContext context,
    ToastPosition? position = ToastPosition.top,
    required ToastProvider toast,
    Duration? duration,
  }) {
    if (toastTimer == null || !toastTimer!.isActive) {
      _overlayEntry = _createOverlayEntry(context, toast, position!, duration);
      Overlay.of(context)!.insert(_overlayEntry!);
      toastTimer = Timer(const Duration(seconds: 2), () {
        if (_overlayEntry != null) {
          _overlayEntry!.remove();
        }
      });
    }
  }

  /// Use [ToastWithColor] or [ToastWithoutColor] for ToastProvider
  static show(BuildContext context, ToastProvider toast) {
    return Material(
      color: Colors.transparent,
      child: toast.show(context),
    );
  }

  static OverlayEntry _createOverlayEntry(
    BuildContext context,
    ToastProvider toast,
    ToastPosition position,
    Duration? duration,
  ) {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: position == ToastPosition.top ||
                position == ToastPosition.topLeft ||
                position == ToastPosition.topRight
            ? 16.0
            : null,
        bottom: position == ToastPosition.bottom ||
                position == ToastPosition.bottomLeft ||
                position == ToastPosition.bottomRight
            ? 16.0
            : null,
        child: ToastAnimation(
          offset: getOffset(position),
          duration: duration,
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: toast.show(context),
            ),
          ),
        ),
      ),
    );
  }
}
