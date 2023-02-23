import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/datatable.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Map<String, dynamic>> _venderList = [
    {
      'id': '1',
      'product_image': Images.tv3,
      'product_name': 'OnePlus smart Tv',
      'qty': '1',
      'price': '\$200',
      'total': '\$200',
    },
    {
      'id': '2',
      'product_image': Images.chair,
      'product_name': 'Chair',
      'qty': '2',
      'price': '\$150',
      'total': '\$300',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: _cartDetails(),
            ),
            FxBox.w20,
            Expanded(
              child: _priceBox(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _priceBox() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstText.lightText(
              text: Strings.priceDetails.toUpperCase(),
              fontWeight: FontWeight.bold,
            ),
            FxBox.h12,
            _headerAndValue(header: 'SubTotal:', value: '\$500'),
            _headerAndValue(header: 'Shipping:', value: 'Free'),
            _headerAndValue(header: 'Tax:', value: '\$30'),
            _headerAndValue(header: 'Total:', value: '\$530'),
          ],
        ),
      ),
    );
  }

  Widget _headerAndValue({
    required String header,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ConstText.lightText(
            text: header,
            fontWeight: FontWeight.w500,
          ),
          ConstText.lightText(
            text: value,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox.shrink(),
          const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _cartDetails() {
    return Card(
      shadowColor: ColorConst.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 7,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ConstText.lightText(
              text: Strings.returnCondition.toUpperCase(),
              fontWeight: FontWeight.bold,
            ),
            FxBox.h12,
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: (56.0 * 10) + 72.0),
              child: DataTable3(
                  showCheckboxColumn: false,
                  showBottomBorder: true,
                  columnSpacing: 20.0,
                  minWidth: 728.0,
                  dataRowHeight: Responsive.isMobile(context)
                      ? 100
                      : Responsive.isTablet(context)
                          ? 95
                          : islg(context)
                              ? 90
                              : 56.0,
                  headingRowHeight: 64.0,
                  border: TableBorder(
                    bottom: BorderSide(
                      width: 1,
                      color: isDark
                          ? ColorConst.white.withOpacity(0.25)
                          : Colors.grey.shade200,
                    ),
                    horizontalInside: BorderSide(
                      width: 1,
                      color: isDark
                          ? ColorConst.white.withOpacity(0.25)
                          : Colors.grey.shade50,
                    ),
                  ),
                  columns: [
                    DataColumn2(
                      label: _tableHeader('#'),
                      size: ColumnSize.S,
                    ),
                    DataColumn2(
                      label: _tableHeader('Product Photo'),
                      size: ColumnSize.L,
                    ),
                    DataColumn2(
                      label: _tableHeader('Product Name'),
                      size: ColumnSize.M,
                    ),
                    DataColumn2(
                      label: _tableHeader('Quantity'),
                      size: ColumnSize.M,
                    ),
                    DataColumn2(
                      label: _tableHeader('Price'),
                      size: ColumnSize.S,
                    ),
                    DataColumn2(
                      label: _tableHeader('Total'),
                      size: ColumnSize.S,
                    ),
                    DataColumn2(
                      label: _tableHeader(''),
                      size: ColumnSize.S,
                    ),
                  ],
                  rows: _venderList.map((e) {
                    return DataRow(
                      onSelectChanged: (value) {},
                      cells: [
                        DataCell(_tableHeader(e['id'].toString())),
                        DataCell(_tableImage(e['product_image'])),
                        DataCell(_tableHeader(e['product_name'])),
                        DataCell(_tableHeader(e['qty'])),
                        DataCell(_tableHeader(e['price'])),
                        DataCell(_tableHeader(e['total'])),
                        DataCell(_deleteButton(
                          onPressed: () {},
                        )),
                      ],
                    );
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tableHeader(String text) {
    return ConstText.lightText(
      text: text,
      fontWeight: FontWeight.w700,
    );
  }

  Widget _tableImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(imagePath),
    );
  }

  Widget _deleteButton({
    required void Function()? onPressed,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.delete,
        color: ColorConst.errorDark,
      ),
    );
  }
}
