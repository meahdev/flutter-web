import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class BlogDetailsScreen extends StatefulWidget {
  const BlogDetailsScreen({super.key});

  @override
  State<BlogDetailsScreen> createState() => _BlogDetailsScreenState();
}

class _BlogDetailsScreenState extends State<BlogDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: isxl(context)
          ? Row(
              children: [
                const Expanded(child: SizedBox.shrink()),
                Expanded(flex: 3, child: _blogDetail()),
                const Expanded(child: SizedBox.shrink()),
              ],
            )
          : Column(
              children: [
                _blogDetail(),
              ],
            ),
    );
  }

  Widget _blogDetail() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ConstText.lightText(
        //   text: Strings.blogDetail.toUpperCase(),
        //   fontWeight: FontWeight.bold,
        // ),
        // FxBox.h24,
        Card(
          shadowColor: ColorConst.primary.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                FxBox.h16,
                _blogHeader(),
                FxBox.h16,
                _blogImage(),
                FxBox.h16,
                _blogDes(),
                FxBox.h16,
                _imageWithDec(Images.tShirt, true),
                FxBox.h16,
                _imageWithDec(Images.tShirt1, false),
                FxBox.h16,
                _imageWithDec(Images.tShirt2, true),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _imageWithDec(String imagePath, bool isFront) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (isFront) ...[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(imagePath),
            ),
          ),
          Expanded(
            child: Column(
              children: const [
                Text(
                  'Fashion is for men just as much as it is for women.'
                  'And whoever says that men can get away with just about'
                  'any shirt with jeans – ah,they couldn’t be more wrong!\n\n'
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                  'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                  'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
                  'It has survived not only five centuries, but also the leap into electronic typesetting, remaining'
                  'essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets '
                  'containing Lorem Ipsum passages, and more recently with desktop publishing software like '
                  'Aldus PageMaker including versions of Lorem Ipsum.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
        if (!isFront) ...[
          Expanded(
            child: Column(
              children: const [
                Text(
                  'Fashion is for men just as much as it is for women.'
                  'And whoever says that men can get away with just about'
                  'any shirt with jeans – ah,they couldn’t be more wrong!\n\n'
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                  'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                  'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
                  'It has survived not only five centuries, but also the leap into electronic typesetting, remaining'
                  'essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets '
                  'containing Lorem Ipsum passages, and more recently with desktop publishing software like '
                  'Aldus PageMaker including versions of Lorem Ipsum.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(imagePath),
            ),
          ),
        ],
      ],
    );
  }

  Widget _blogImage() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Image.asset('assets/images/t-shirt_ward1.jpeg'),
    );
  }

  Widget _blogHeader() {
    return ConstText.mediumText(
      text: 'T-Shirts Every Man Needs in His Wardrobe',
      fontWeight: FontWeight.bold,
    );
  }

  Widget _blogDes() {
    return const SizedBox(
      width: 900,
      child: Text(
        'Fashion is for men just as much as it is for women.'
        'And whoever says that men can get away with just about'
        'any shirt with jeans – ah,they couldn’t be more wrong!\n\n'
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
        'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining'
        'essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets '
        'containing Lorem Ipsum passages, and more recently with desktop publishing software like '
        'Aldus PageMaker including versions of Lorem Ipsum.',
        // overflow: TextOverflow.ellipsis,

        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
