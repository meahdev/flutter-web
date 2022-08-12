import 'package:admin_dashboard/src/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.margin,
      this.textInputAction,
      this.focusNode,
      this.onChanged,
      this.obsecureText = false,
      this.onTap,
      this.onSubmitted,
      this.keyBoardType,
      this.textCapitalization,
      this.errorText,
      this.changeColor,
      this.readOnly = false,
      this.onIconTap,
      this.suffixIcon,
      this.validator,
      this.maxLength})
      : assert(controller != null),
        super(key: key);
  final TextEditingController? controller;
  final EdgeInsetsGeometry? margin;
  final TextInputAction? textInputAction;
  final String? hintText;
  final FocusNode? focusNode;
  final bool? obsecureText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final TextInputType? keyBoardType;
  final TextCapitalization? textCapitalization;
  final String? errorText;
  final bool? changeColor;
  final bool? readOnly;
  final void Function()? onIconTap;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        textInputAction: textInputAction,
        obscureText: obsecureText!,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        maxLines: 1,
        minLines: 1,
        onTap: onTap,
        keyboardType: keyBoardType,
        textCapitalization: textCapitalization!,
        cursorColor: ColorConst.lightFontColor,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          suffixIconConstraints: const BoxConstraints(minWidth: 30),
          filled: true,
          hintText: hintText,
          fillColor: ColorConst.white,
          hintStyle: const TextStyle(
              color: ColorConst.lightFontColor,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          isDense: true,
          isCollapsed: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          suffixIcon: suffixIcon,
          errorText: errorText,
          errorStyle: const TextStyle(fontSize: 10, height: 0.7),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConst.appbarLightBG),
            borderRadius: BorderRadius.circular(4),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConst.lightFontColor),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConst.primary),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        validator: validator,
        maxLength: maxLength,
      ),
    );
  }
}