import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';

class Styles {
  static TextStyle get headline200Heavy => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AssetColors.tertiaryColor,
      );
  static TextStyle get headline200light => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AssetColors.tertiaryColor,
      );
  static TextStyle get paragraph200Light => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AssetColors.paragraphColor,
      );
  static TextStyle get paragraph300Light => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AssetColors.paragraphColor,
      );
  static TextStyle get paragraph100Heavy => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AssetColors.secondaryColor,
      );
}
