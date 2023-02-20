import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:flutter/material.dart';

class SubScriptionBox extends StatefulWidget {
  const SubScriptionBox({Key? key}) : super(key: key);

  @override
  State<SubScriptionBox> createState() => _SubScriptionBoxState();
}

class _SubScriptionBoxState extends State<SubScriptionBox> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 465,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: ColorConst.primary,
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ConstText.lightText(
                text: 'New User',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ConstText.largeText(
                text: '24.800',
                fontSize: 33,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
              ConstText.lightText(
                text: 'New SubScribers',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ConstText.largeText(
                text: '1452',
                fontSize: 33,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
              ConstText.lightText(
                text: 'Total SubScribers',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ConstText.largeText(
                text: '3200',
                fontSize: 33,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
              ConstText.lightText(
                text: 'Lorem Ipsum is simply dummy text of the printing.',
                textAlign: TextAlign.center,
                fontSize: 15,
                // color: ColorConst.white.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
