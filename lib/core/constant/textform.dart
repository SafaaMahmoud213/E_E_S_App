import 'package:flutter/material.dart';
import 'package:my_app/core/constant/colors.dart';

// ignore: must_be_immutable
class AppTextForm extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  String labelText;
  Icon? prefixIcon;
  double? width;
  double? height;
  EdgeInsetsGeometry? padding;
  Function(String)? onChanged;
  AppTextForm({
    super.key,
    required this.labelText,
    this.padding,
    this.prefixIcon,
    this.width,
    this.height,
    this.onChanged,
    this.controller,
    this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelText: labelText,

          prefixIcon: prefixIcon,

          labelStyle: TextStyle(
            fontSize: 16,
            color: AppColors.greyColor,
            fontWeight: FontWeight.w400,
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.greyColor, width: 1),
          ),
        ),
      ),
    );
  }
}
