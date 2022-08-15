import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class StatusBox extends StatefulWidget {
  const StatusBox({Key? key}) : super(key: key);

  @override
  State<StatusBox> createState() => _StatusBoxState();
}

class _StatusBoxState extends State<StatusBox> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 250,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgIcon(
                icon: IconlyBroken.successCircle,
                color: ColorConst.success,
                size: 50,
              ),
              FxBox.h12,
              ConstText.lightText(
                fontSize: 16,
                text: Strings.orderSuccessful,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
              FxBox.h8,
              ConstText.lightText(
                fontSize: 14,
                text: Strings.successText,
                fontWeight: FontWeight.w500,
              ),
              FxBox.h16,
              FxButton(
                borderRadius: 6,
                onPressed: () {},
                textColor: ColorConst.white,
                text: Strings.checkStatus,
                color: ColorConst.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
