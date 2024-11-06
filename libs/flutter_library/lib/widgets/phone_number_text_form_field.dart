import 'package:flutter/material.dart';
import 'package:flutter_library/constants/app_color.dart';
import 'package:flutter_library/constants/app_spacing.dart';

class PhoneNumberTextFormField extends StatelessWidget {
  const PhoneNumberTextFormField({
    super.key,
    required this.controller,
    this.onChanged,
  });

  final TextEditingController controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        expands: true,
        maxLines: null,
        minLines: null,
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          hintText: 'رقم الهاتف ...',
          border: OutlineInputBorder(
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
