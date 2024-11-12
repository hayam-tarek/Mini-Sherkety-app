import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_images.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Company App Bar', type: CompanyAppBar)
Widget companyAppBarUseCase(BuildContext context) => CompanyAppBar(
      chatDots: context.knobs.string(
        label: 'Chat Icon',
        initialValue: AssetImages.chatDots,
      ),
      logo: context.knobs.string(
        label: 'Logo Icon',
        initialValue: AssetImages.logo,
      ),
      menu: context.knobs.string(
        label: 'Menu Icon',
        initialValue: AssetImages.menu,
      ),
    );

class CompanyAppBar extends StatelessWidget {
  const CompanyAppBar({
    super.key,
    this.chatDots = AssetImages.chatDots,
    this.logo = AssetImages.logo,
    this.menu = AssetImages.menu,
  });

  final String chatDots;
  final String logo;
  final String menu;

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
