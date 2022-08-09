import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final OutlineInputBorder? border;
  final String? hintText;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField({
    Key? key,
    this.controller,
    this.border,
    this.hintText,
    this.contentPadding,
    this.obscureText = false,
    this.suffixIcon,
    this.onChanged,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        
        border: border,
        hintText: hintText,
        contentPadding: contentPadding,
        suffixIcon: suffixIcon,
      
      ),
    );
  }
}
