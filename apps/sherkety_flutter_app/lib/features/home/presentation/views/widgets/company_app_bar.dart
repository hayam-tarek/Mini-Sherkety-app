import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_images.dart';

class CompanyAppBar extends StatelessWidget {
  const CompanyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              AssetImages.chatDots,
              height: 40,
              width: 40,
            ),
          ),
          Image.asset(
            AssetImages.logo,
            height: 72,
            width: 248,
          ),
          InkWell(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Image.asset(
              AssetImages.menu,
              height: 40,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
