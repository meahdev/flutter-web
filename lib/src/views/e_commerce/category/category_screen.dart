import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/localization/multi_language.dart';
import 'package:admin_dashboard/src/widget/datatable.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool isShow = false;

  final TextEditingController _categoryController = TextEditingController();
  String? currentImage;
  String? defaultValue;
  final List<String> _statusList = [
    'Active',
    'Deactive',
  ];
  @override
  void initState() {
    super.initState();
    defaultValue = _statusList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _addNewCategory(),
        FxBox.h16,
        if (isShow) ...[
          _createCategory(),
          FxBox.h16,
        ],
        Card(
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
                  text: languageModel.eCommerceAdmin.category.trim(),
                  fontWeight: FontWeight.bold,
                ),
                FxBox.h10,
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: (56.0 * 10) + 72.0),
                  child: DataTable3(
                    showCheckboxColumn: false,
                    showBottomBorder: true,
                    columnSpacing: 20.0,
                    minWidth: 728.0,
                    dataRowHeight: 56.0,
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
                        label: _tableHeader(languageModel.eCommerceAdmin.id),
                        size: ColumnSize.S,
                      ),
                      DataColumn2(
                        label: _tableHeader(languageModel.eCommerceAdmin.image),
                        size: ColumnSize.L,
                      ),
                      DataColumn2(
                        label: _tableHeader(
                            languageModel.eCommerceAdmin.categoryName),
                        size: ColumnSize.M,
                      ),
                      DataColumn2(
                        label:
                            _tableHeader(languageModel.eCommerceAdmin.status),
                        size: ColumnSize.S,
                      ),
                      DataColumn2(
                        label: _tableHeader(''),
                        size: ColumnSize.S,
                      ),
                    ],
                    rows: [
                      DataRow(
                        onSelectChanged: (value) {
                          autoTabRouter!.setActiveIndex(41);
                        },
                        cells: [
                          DataCell(_tableHeader('1')),
                          DataCell(_tableRowImage(Images.men)),
                          DataCell(_tableHeader('Men')),
                          DataCell(
                              _statusBox(ColorConst.successDark, 'Active')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {
                          autoTabRouter!.setActiveIndex(41);
                        },
                        cells: [
                          DataCell(_tableHeader('2')),
                          DataCell(_tableRowImage(Images.women)),
                          DataCell(_tableHeader('Women')),
                          DataCell(
                              _statusBox(ColorConst.warningDark, 'Deactive')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {
                          autoTabRouter!.setActiveIndex(41);
                        },
                        cells: [
                          DataCell(_tableHeader('3')),
                          DataCell(_tableRowImage(Images.electronic)),
                          DataCell(_tableHeader('Accessories')),
                          DataCell(
                              _statusBox(ColorConst.successDark, 'Active')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {
                          autoTabRouter!.setActiveIndex(41);
                        },
                        cells: [
                          DataCell(_tableHeader('4')),
                          DataCell(_tableRowImage(Images.homeAndKitchen)),
                          DataCell(_tableHeader('Home And Kitchen')),
                          DataCell(
                              _statusBox(ColorConst.successDark, 'Active')),
                          DataCell(_editButton()),
                        ],
                      ),
                      DataRow(
                        onSelectChanged: (value) {
                          autoTabRouter!.setActiveIndex(41);
                        },
                        cells: [
                          DataCell(_tableHeader('5')),
                          DataCell(_tableRowImage(Images.entertainment)),
                          DataCell(_tableHeader('Entertainment')),
                          DataCell(
                              _statusBox(ColorConst.successDark, 'Active')),
                          DataCell(_editButton()),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _tableHeader(String text) {
    return ConstText.lightText(
      text: text,
      fontWeight: FontWeight.w700,
    );
  }

  Widget _tableRowImage(String imagepath) {
    return Image.asset(
      imagepath,
      height: 40,
    );
  }

  Widget _statusBox(
    Color? color,
    String text,
  ) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }

  Widget _editButton() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            isShow = !isShow;
            currentImage = Images.men;
            _categoryController.text = 'Men';
            setState(() {});
          },
          icon: const Icon(Icons.mode_edit_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            color: ColorConst.errorDark,
          ),
        ),
      ],
    );
  }

  Widget _createCategory() {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {},
              child: CircleAvatar(
                radius: 36,
                backgroundColor: ColorConst.primary.withOpacity(0.2),
                child: currentImage == null
                    ? const SvgIcon(
                        icon: IconlyBroken.camera,
                        size: 26,
                      )
                    : Image.asset(
                        currentImage!,
                        height: 30,
                      ),
              ),
            ),
          ],
        ),
        FxBox.w24,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: CustomTextField(
                controller: _categoryController,
                hintText: 'Enter Category Name',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            FxBox.h24,
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                value: defaultValue,
                underline: const SizedBox.shrink(),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: _statusList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    defaultValue = newValue!;
                  });
                },
              ),
            ),
          ],
        ),
        const Spacer(),
        FxButton(
          height: 50,
          onPressed: () async {
            isShow = !isShow;
            currentImage = null;
            _categoryController.text = '';
            setState(() {});
          },
          fullWidth: false,
          color: ColorConst.primary,
          minWidth: MediaQuery.of(context).size.width / 7,
          text: 'Add Category',
          textColor: ColorConst.white,
        ),
        FxBox.w24,
        FxButton(
          height: 50,
          minWidth: 50,
          hoverColor: ColorConst.error.withOpacity(0.1),
          onPressed: () {
            isShow = !isShow;
            currentImage = null;
            _categoryController.text = '';
            setState(() {});
          },
          color: ColorConst.error.withOpacity(0.4),
          icon: const SvgIcon(
            icon: IconlyBroken.closeSquare,
            color: ColorConst.white,
          ),
        ),
      ],
    );
  }

  Widget _addNewCategory() {
    return Align(
      alignment: Alignment.centerRight,
      child: FxButton(
        height: 50,
        textColor: ColorConst.white,
        color: ColorConst.primary,
        fullWidth: false,
        minWidth: MediaQuery.of(context).size.width / 7,
        onPressed: () {
          isShow = !isShow;
          setState(() {});
        },
        text: 'New Category',
      ),
    );
  }
}
