import 'package:flutter/material.dart';
import 'package:flutter_library/constants/app_color.dart';
import 'package:flutter_library/constants/app_spacing.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    super.key,
    required this.controller,
    this.onChanged,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        onChanged: onChanged,
        expands: obscureText ? false : true,
        maxLines: obscureText ? 1 : null,
        minLines: null,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.borderDefaultColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                AppSpacing.borderRadius,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
