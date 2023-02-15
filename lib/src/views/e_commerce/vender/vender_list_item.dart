import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class VenderListItem extends StatefulWidget {
  const VenderListItem({Key? key}) : super(key: key);

  @override
  State<VenderListItem> createState() => _VenderListItemState();
}

class _VenderListItemState extends State<VenderListItem> {
  final List<Map<String, dynamic>> _listItem = [
    {
      'id': 0,
      'producTitle': 'Total Earning',
      'value': '3,930 \$',
      'boxIcon': Icons.bar_chart_rounded,
      'boxColor': ['FEBE99', 'F66F94'],
      'percentage': 60,
    },
    {
      'id': 1,
      'producTitle': 'Total Orders',
      'value': '1200',
      'boxIcon': Icons.note_alt_rounded,
      'boxColor': ['43D5E7', '7DB1F0'],
      'percentage': 10,
    },
    {
      'id': 2,
      'producTitle': 'Total Cancelled Orders',
      'value': '120',
      'boxIcon': Icons.note_alt_rounded,
      // 'boxColor': '9B5B1E',
      'boxColor': ['43D5E7', '7DB1F0'],
      'percentage': 10,
    },
    {
      'id': 3,
      'producTitle': 'Total Return Order',
      'value': '170',
      'boxIcon': Icons.pending_actions_outlined,
      'boxColor': ['FEBE99', 'F66F94'],
      'percentage': -5,
    },
    {
      'id': 4,
      'producTitle': 'Total Pending Ordres',
      'value': '200',
      'boxIcon': Icons.shopping_bag_rounded,
      'boxColor': ['FEBE99', 'F66F94'],
      'percentage': 15,
    },
    {
      'id': 5,
      'producTitle': 'Pending Settlement',
      'value': '400 \$',
      'boxIcon': Icons.shopping_bag_rounded,
      'boxColor': ['43D5E7', '7DB1F0'],
      'percentage': -1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        gridDelegate: Responsive.isMobile(context)
            ? const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                mainAxisExtent: 205,
              )
            : MediaQuery.of(context).size.width < 1500
                ? const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 205,
                  )
                : SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent:
                        MediaQuery.of(context).size.width * 0.24,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 205,
                  ),
        itemCount: _listItem.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _listContainer(
            boxIcon: _listItem[index]['boxIcon'],
            productTitle: _listItem[index]['producTitle'],
            value: _listItem[index]['value'],
            percentage: _listItem[index]['percentage'],
            color: index == 3
                ? [
                    Color(int.parse('0xff${_listItem[index]['boxColor'][0]}'))
                        .withOpacity(0.75),
                    Color(int.parse('0xff${_listItem[index]['boxColor'][1]}'))
                        .withOpacity(0.75)
                  ]
                : [
                    Color(int.parse('0xff${_listItem[index]['boxColor'][0]}')),
                    Color(int.parse('0xff${_listItem[index]['boxColor'][1]}'))
                  ],
          );
        },
      ),
    );
  }

  Widget _listContainer({
    required IconData boxIcon,
    required String productTitle,
    required String value,
    required List<Color> color,
    required int percentage,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              gradient: LinearGradient(colors: color),
            ),
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstText.lightText(
                      text: productTitle,
                      color: ColorConst.white,
                      fontWeight: FontWeight.bold,
                    ),
                    Icon(boxIcon, color: ColorConst.white),
                  ],
                ),
                FxBox.h12,
                ConstText.mediumText(
                  text: value,
                  color: ColorConst.white,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                ConstText.lightText(
                  text: percentage > 0
                      ? 'Increased by ${percentage.abs()}%'
                      : 'Decreased by ${percentage.abs()}%',
                  color: ColorConst.white,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Positioned(
            right: -75.0,
            top: -25.0,
            child: Container(
              height: 175,
              width: 175,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorConst.white.withOpacity(0.15),
              ),
            ),
          ),
          Positioned(
            bottom: -87.5,
            right: -37.5,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorConst.white.withOpacity(0.15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
