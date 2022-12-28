import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Listitem extends StatefulWidget {
  const Listitem({Key? key}) : super(key: key);

  @override
  State<Listitem> createState() => _ListitemState();
}

class _ListitemState extends State<Listitem> {
  final List<Map<String, dynamic>> _listItem = [
    {
      'id': 0,
      'producTitle': 'Total Inventory',
      'value': '3,930',
      'boxIcon': Icons.note_add,
      'boxColor': '05A660',
      // 'boxColor': 'FFE6FF',
    },
    {
      'id': 1,
      'producTitle': 'Total Active',
      'value': '1,268',
      'boxIcon': Icons.note_alt_rounded,
      'boxColor': '9B5B1E',
      // 'boxColor': 'FFF8E6',
    },
    {
      'id': 2,
      'producTitle': 'Total Cancel',
      'value': '170',
      'boxIcon': Icons.pending_actions_outlined,
      'boxColor': '18818D',
      // 'boxColor': 'E6FFFF',
    },
    {
      'id': 3,
      'producTitle': 'Total Sales',
      'value': '28,060',
      'boxIcon': Icons.shopping_bag_rounded,
      'boxColor': '004FC4',
      // 'boxColor': 'E5F0FF',
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
                mainAxisExtent: 105,
              )
            : MediaQuery.of(context).size.width < 1500
                ? const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 105,
                  )
                : SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent:
                        MediaQuery.of(context).size.width * 0.24,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 105,
                  ),
        itemCount: _listItem.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _listContainer(
            boxIcon: _listItem[index]['boxIcon'],
            productTitle: _listItem[index]['producTitle'],
            value: _listItem[index]['value'],
            color: Color(int.parse('0xff${_listItem[index]['boxColor']}')),
          );
        },
      ),
    );
  }

  Widget _listContainer({
    required IconData boxIcon,
    required String productTitle,
    required String value,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.25),
        borderRadius: BorderRadius.circular(18.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: color.withOpacity(0.5),
        //     blurRadius: 5.0,
        //     offset: const Offset(0.0, 5.0),
        //   ),
        // ],
      ),
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _iconBox(boxIcon: boxIcon, color: color),
              FxBox.w20,
              _listIconItem(
                productTitle: productTitle,
                value: value,
                color: color,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _iconBox({required IconData boxIcon, required Color color}) {
    return Container(
      height: 58,
      width: 58,
      decoration: BoxDecoration(
        color: ColorConst.white.withOpacity(0.05),
        shape: BoxShape.circle,
      ),
      child: Icon(
        boxIcon,
        color: color,
        size: 32,
      ),
    );
  }

  Widget _listIconItem({
    required String productTitle,
    required String value,
    required Color color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstText.lightText(
          text: productTitle,
          fontWeight: FontWeight.bold,
        ),
        FxBox.h12,
        ConstText.mediumText(
          text: value,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  // Widget _textBox({required String title}) {
  //   return ConstText.lightText(
  //     text: title,
  //     color: ColorConst.white.withOpacity(0.5),
  //     fontWeight: FontWeight.w500,
  //   );
  // }
}
