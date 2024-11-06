import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class PasswordValidationItem extends StatelessWidget {
  const PasswordValidationItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle_rounded,
            color: AssetColors.paragraphColor,
            size: 14,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: Styles.paragraph200Light,
          ),
        ],
      ),
    );
  }
}
