import 'package:flutter/material.dart';
import 'package:flutter_library/constants/app_color.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 32,
          color: AppColor.brandDefault,
        ),
      ),
    );
  }
}
