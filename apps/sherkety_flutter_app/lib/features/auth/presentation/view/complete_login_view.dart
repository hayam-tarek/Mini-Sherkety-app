import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class CompleteLoginView extends StatelessWidget {
  const CompleteLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35), // 24 cm from the top
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Minimizes the space the column occupies
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center-align items horizontally
            children: [
              Text(
                'تم التحديث',
                style: Styles.headline200Heavy,
                textAlign: TextAlign.center,
              ),
              const SmallSpace(),
              Text(
                'تم تغيير كلمة السر بنجاح',
                style: Styles.headline200light,
                textAlign: TextAlign.center,
              ),
              const BaseSpacing(),
              Image.asset(
                'assets/images/check.png',
                width: 128,
                height: 128,
              ),
              const BaseSpacing(),
              Text(
                ' يمكنك الدخول الآن باستخدام كلمة السر الجديدة',
                style: Styles.paragraph100Light,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 425),
              DefaultButton(
                text: 'دخول',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
