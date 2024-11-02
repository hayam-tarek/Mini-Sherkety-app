import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';

class BaseSpacing extends StatelessWidget {
  const BaseSpacing({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: AssetSpacing.baseSpacing,
      width: double.infinity,
    );
  }
}
