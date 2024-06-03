import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:task_manager_flutter_getx/app/constants/app_constants.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    this.label,
    this.hintText,
    this.height,
    this.keyboardType,
    this.onChanged,
    this.prefixIcon,
  });

  final String? label;
  final String? hintText;
  final double? height;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      child: TextField(
        keyboardType: keyboardType,
        cursorColor: Get.theme.primaryColor,
        style: Get.textTheme.bodyMedium,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
