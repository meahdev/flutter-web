import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/views/e_commerce/product.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class ProductAdd extends StatefulWidget {
  const ProductAdd({super.key});

  @override
  State<ProductAdd> createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 32.0,
            horizontal: 24.0,
          ),
          decoration: BoxDecoration(
            // color: !isDark ? ColorConst.white : ColorConst.black,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _formTitle('Product Name'),
                    FxBox.h6,
                    CustomTextField(
                      contentPadding: const EdgeInsets.all(12.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    FxBox.h16,
                    _formTitle('Description'),
                    FxBox.h6,
                    CustomTextField(
                      maxLines: 6,
                      contentPadding: const EdgeInsets.all(12.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    FxBox.h16,
                    _formTitle('Category'),
                    FxBox.h6,
                    _categoryDropDown(),
                    FxBox.h16,
                    _expiryRow(),
                    FxBox.h16,
                    FxButton(
                      height: 60,
                      fullWidth: true,
                      borderRadius: 4.0,
                      text: 'ADD PRODUCT KNOW',
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(24.0),
                  height: size.height * 0.30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.black
                        : Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white.withOpacity(0.4)
                            : Colors.black.withOpacity(0.1),
                        spreadRadius: 3.0,
                        blurRadius: 5.0,
                        // offset: const Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      
                      UnconstrainedBox(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.0)),
                          child: const SvgIcon(
                            icon: IconlyBroken.clourComputing,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _formTitle(String text) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
    );
  }

  Widget _categoryDropDown() {
    return DropdownButtonFormField(
      hint: const Text(
        'Select Category',
        style: TextStyle(
          color: ColorConst.black,
        ),
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: !isDark
                ? ColorConst.black
                : ColorConst.white.withOpacity(
                    0.5,
                  ),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color:
                !isDark ? ColorConst.black : ColorConst.white.withOpacity(0.5),
          ),
        ),
      ),
      onChanged: (value) {
        print(value['title']);
      },
      items: productList.map<DropdownMenuItem>(
        (e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e['category'].toString()),
          );
        },
      ).toList(),
    );
  }

  Widget _expiryRow() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _formTitle('Expire Date'),
              FxBox.h6,
              CustomTextField(
                contentPadding: const EdgeInsets.all(12.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
        FxBox.w12,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _formTitle('Units in Stock'),
              FxBox.h6,
              CustomTextField(
                contentPadding: const EdgeInsets.all(12.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
