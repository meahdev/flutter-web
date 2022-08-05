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
      'producTitle': 'ORDERS',
      'value': '1,243',
      'boxIcon': Icons.note_add,
      'up_down_Icon': Icons.arrow_upward,
      'addTitle': 'Since last month'
    },
    {
      'id': 1,
      'producTitle': 'REVENUE',
      'value': '52,123',
      'boxIcon': Icons.note_alt_sharp,
      'up_down_Icon': Icons.arrow_downward,
      'addTitle': 'Since last month'
    },
    {
      'id': 2,
      'producTitle': 'AVERAGE PRICE',
      'value': '15.6',
      'boxIcon': Icons.pending_actions_outlined,
      'up_down_Icon': Icons.arrow_upward,
      'addTitle': 'Since last month'
    },
    {
      'id': 3,
      'producTitle': 'PRODUCT SOLD',
      'value': '2456',
      'boxIcon': Icons.shopping_bag_rounded,
      'up_down_Icon': Icons.arrow_upward,
      'addTitle': 'Since last month'
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
                mainAxisExtent: 160,
              )
            : Responsive.isTablet(context)
                ? const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 160,
                  )
                : SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent:
                        MediaQuery.of(context).size.width * 0.24,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 160,
                  ),
        itemCount: _listItem.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return _listContainer(
            boxIcon: _listItem[index]['boxIcon'],
            productTitle: _listItem[index]['producTitle'],
            value: _listItem[index]['value'],
            icon: _listItem[index]['up_down_Icon'],
            title: _listItem[index]['addTitle'],
            color: _listItem[index]['producTitle'] == 'REVENUE'
                ? ColorConst.error
                : ColorConst.success,
          );
        },
      ),
    );
  }

  Widget _listContainer(
      {required IconData boxIcon,
      required String productTitle,
      required String value,
      required IconData icon,
      required String title,
      required Color color}) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConst.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              _iconBox(boxIcon: boxIcon),
              _listIconItem(
                icon: icon,
                productTitle: productTitle,
                value: value,
                color: color,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _textBox(title: title),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.arrow_forward,
                  color: ColorConst.white.withOpacity(0.5),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _iconBox({
    required IconData boxIcon,
  }) {
    return Container(
      height: 58,
      width: 58,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ColorConst.white.withOpacity(0.2),
      ),
      child: Icon(
        boxIcon,
        color: ColorConst.white,
        size: 32,
      ),
    );
  }

  Widget _listIconItem({
    required String productTitle,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstText.lightText(
          text: productTitle,
          color: ColorConst.white.withOpacity(0.5),
          fontWeight: FontWeight.bold,
        ),
        FxBox.h12,
        Row(
          children: [
            ConstText.mediumText(
              text: value,
              color: ColorConst.white,
              fontWeight: FontWeight.bold,
            ),
            FxBox.w20,
            Icon(
              icon,
              color: color,
              size: 20,
            ),
          ],
        ),
      ],
    );
  }

  Widget _textBox({
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ConstText.lightText(
        text: title,
        color: ColorConst.white.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
