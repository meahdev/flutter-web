import 'package:flutter/material.dart';

class CommanSizeBox extends StatelessWidget {
  final double? height;
  final double? width;
  const CommanSizeBox({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
