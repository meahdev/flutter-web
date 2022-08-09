import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:flutter/material.dart';

class TopProductSale extends StatefulWidget {
  const TopProductSale({Key? key}) : super(key: key);

  @override
  State<TopProductSale> createState() => _TopProductSaleState();
}

class _TopProductSaleState extends State<TopProductSale> {
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
          padding: const EdgeInsets.all(20),
          color: ColorConst.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ConstText.lightText(
                text: Strings.topProductSale,
                color: ColorConst.white.withOpacity(0.5),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ConstText.largeText(
                text: '1452',
                fontSize: 32,
                color: ColorConst.white,
                fontWeight: FontWeight.bold,
              ),
              ConstText.lightText(
                text: Strings.computer,
                color: ColorConst.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              ConstText.lightText(
                text: Strings.otherText,
                textAlign: TextAlign.center,
                fontSize: 14,
                color: ColorConst.white.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
