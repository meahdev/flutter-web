import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration? inputDecoration;
  const CustomTextField(
      {Key? key, required this.controller, this.inputDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: controller, decoration: inputDecoration);
  }
}
