import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/utils/localization/multi_language.dart';
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
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 250,
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
                text: languageModel.dashboard.topProductSale,
                // color: ColorConst.white.withOpacity(0.5),
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              ConstText.largeText(
                text: '1452',
                fontSize: 33,
                color: ColorConst.primary,
                fontWeight: FontWeight.bold,
              ),
              ConstText.lightText(
                text: languageModel.dashboard.computer,
                color: ColorConst.primary,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              ConstText.lightText(
                text: languageModel.lorem1,
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
