import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class DangerContainer extends StatelessWidget {
  const DangerContainer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: 361,
          decoration: BoxDecoration(
            color: AssetColors.bgDangerWeakColor,
            borderRadius: BorderRadius.circular(
              AssetSpacing.borderRadius,
            ),
          ),
          child: Wrap(
            children: [
              const Icon(
                Icons.error_outline,
                color: AssetColors.iconDangerDefaultColor,
              ),
              const SizedBox(width: 4),
              Text(
                text,
                style: Styles.paragraph300Light.copyWith(
                  color: AssetColors.textDangerDefaultColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
