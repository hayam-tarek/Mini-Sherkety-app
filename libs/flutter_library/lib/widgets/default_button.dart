import 'package:flutter/material.dart';
import 'package:flutter_library/constants/app_color.dart';
import 'package:flutter_library/constants/app_spacing.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    this.onPressed,
    this.fontSize = 16,
    this.backgroundColor = AppColor.bgAccentDefault,
  });
  final String text;
  final void Function()? onPressed;
  final double fontSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        fixedSize: const Size(361, 48),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.borderRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: onPressed != null ? Colors.white : Colors.grey,
        ),
      ),
    );
    // return MaterialButton(
    //   onPressed: onPressed,
    //   minWidth: 361,
    //   height: 48,
    //   color: AssetColors.bgAccentDefault,
    //   textColor: Colors.white,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(AssetSpacing.borderRadius),
    //   ),
    //   child: Text(
    //     text,
    //     style: TextStyle(
    //       fontSize: fontSize,
    //       fontWeight: FontWeight.w700,
    //     ),
    //   ),
    // );
  }
}
