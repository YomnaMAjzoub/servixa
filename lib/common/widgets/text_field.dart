import 'package:flutter/material.dart';
import 'package:servixass/core/constants/app_colors.dart';

class CustomFormField extends StatelessWidget {
 const  CustomFormField({
    required this.width,
    required this.height,
    required this.hint,
    required this.inputAction,
    required this.keyboard,
    this.label,
     this.prefix,
    required this.border,
    required this.focused,
    required this.enabled,
   required this.obscuretext,
    this.suffix,
    this.maxLines,
    super.key,
  });
  final double width;
  final double height;
  final TextInputType keyboard;
  final TextInputAction inputAction;
  final int? maxLines;
  final Widget? prefix;
  final String hint;
  final Widget? label;
  final Widget? suffix;
  final InputBorder border;
  final InputBorder focused;
  final InputBorder enabled;
   final bool obscuretext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        keyboardType: keyboard,
        textInputAction: inputAction,
        obscureText:obscuretext,
        maxLines:maxLines,
        decoration: InputDecoration(
          border: border,
          focusedBorder: focused,
          enabledBorder: enabled,
          hintText:hint,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.grey200,
          ),
          prefixIcon: prefix,
          suffixIcon: suffix,
          label: label,
        ),
      ),
    );
  }
}
