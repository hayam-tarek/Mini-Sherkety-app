import 'package:flutter/material.dart';
import 'package:flutter_library/constants/app_color.dart';
import 'package:flutter_library/constants/app_spacing.dart';
import 'package:flutter_library/constants/styles.dart';

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
            color: AppColor.bgDangerWeakColor,
            borderRadius: BorderRadius.circular(
              AppSpacing.borderRadius,
            ),
          ),
          child: Wrap(
            children: [
              const Icon(
                Icons.error_outline,
                color: AppColor.iconDangerDefaultColor,
              ),
              const SizedBox(width: 4),
              Text(
                text,
                style: Styles.paragraph300Light.copyWith(
                  color: AppColor.textDangerDefaultColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
