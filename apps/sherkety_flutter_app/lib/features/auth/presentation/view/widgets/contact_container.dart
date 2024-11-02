import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({
    super.key,
    required this.iconPath,
  });
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(
              color: AssetColors.borderWeakColor,
            ),
            borderRadius: BorderRadius.circular(
              AssetSpacing.borderRadius,
            ),
            color: AssetColors.bgMediumColor,
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
      ),
    );
  }
}
