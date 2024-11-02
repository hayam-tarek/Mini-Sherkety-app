import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_images.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/contact_container.dart';

class Contacts extends StatelessWidget {
  const Contacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ContactContainer(
          iconPath: AssetImages.linkedInIcon,
        ),
        SizedBox(width: 16),
        ContactContainer(
          iconPath: AssetImages.appleIcon,
        ),
        SizedBox(width: 16),
        ContactContainer(
          iconPath: AssetImages.googleIcon,
        ),
      ],
    );
  }
}
