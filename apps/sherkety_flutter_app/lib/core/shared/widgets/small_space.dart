import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';

class SmallSpace extends StatelessWidget {
  const SmallSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: AssetSpacing.smallSpacing,
      width: double.infinity,
    );
  }
}
