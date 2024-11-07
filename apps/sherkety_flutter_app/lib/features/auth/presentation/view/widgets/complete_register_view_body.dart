import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_images.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class CompleteRegisterViewBody extends StatelessWidget {
  const CompleteRegisterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'شكرا!',
          style: Styles.headline200Heavy,
        ),
        const SmallSpace(),
        Text(
          'تم تفعيل حسابك!',
          style: Styles.headline200light,
          textAlign: TextAlign.center,
        ),
        const BaseSpacing(),
        Image.asset(
          AssetImages.check,
          width: 128,
          height: 128,
        ),
        const BaseSpacing(),
        Text(
          'يمكنك الاستفادة بكل وظائف التطبيق',
          style: Styles.paragraph100Light,
        ),
        const BaseSpacing(),
        Text(
          'برجاء مراجعة بريدك واتباع التعليمات لتفعيل بريدك الإلكتروني',
          style: Styles.paragraph100Light,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
