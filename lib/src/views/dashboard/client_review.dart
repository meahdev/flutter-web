import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Clienresponse extends StatefulWidget {
  const Clienresponse({Key? key}) : super(key: key);

  @override
  State<Clienresponse> createState() => _ClienresponseState();
}

class _ClienresponseState extends State<Clienresponse> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 200),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstText.lightText(
                text: Strings.clientReviews,
                // color: ColorConst.grey800,
                fontWeight: FontWeight.bold,
              ),
              ConstText.lightText(
                text: Strings.clientReviewText,
                fontSize: 14,
                //color: ColorConst.grey800,
                fontWeight: FontWeight.w500,
              ),
              _tableRowImage('James Athey'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tableRowImage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          maxRadius: 20,
          backgroundImage: NetworkImage(Images.profileImage),
        ),
        FxBox.w10,
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              // color: ColorConst.grey800,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Icon(
          Icons.arrow_forward,
          size: 16,
          color: ColorConst.primary,
        ),
      ],
    );
  }
}
