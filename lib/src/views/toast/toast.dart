import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Toast extends StatelessWidget {
  const Toast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FxBox.h12,
            ],
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FxBox.w12,
            ],
          );
  }

  Widget _simpleToast() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Simple toast',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h16,
        
      ],
    );
  }
}
