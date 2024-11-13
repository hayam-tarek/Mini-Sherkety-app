import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../../../../../core/constants/asset_images.dart';

@widgetbook.UseCase(name: 'CustomNavBar', type: CustomNavBar)
class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AssetColors.brandDefault,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            AssetImages.home,
            height: 24,
            width: 24,
          ),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AssetImages.todo,
            height: 24,
            width: 24,
          ),
          label: 'مهامي',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AssetImages.mail,
            height: 24,
            width: 24,
          ),
          label: 'ملفاتي',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AssetImages.settings,
            height: 24,
            width: 24,
          ),
          label: 'إعدادات',
        ),
      ],
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
