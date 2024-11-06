import 'package:flutter/material.dart';
import 'package:flutter_library/constants/app_color.dart';
import 'package:flutter_library/constants/app_spacing.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: 94,
      height: 28,
      color: AppColor.bgSuccessDefault,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.borderRadius),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
