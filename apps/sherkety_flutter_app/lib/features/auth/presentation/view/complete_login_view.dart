import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook/widgetbook.dart';

@widgetbook.UseCase(name: 'Complete Login', type: CompleteLoginView)
Widget passwordChangeSuccessPage(BuildContext context) {
  final String title = context.knobs.string(
    label: 'Title',
    initialValue: 'تم التحديث',
  );

  final String subtitle = context.knobs.string(
    label: 'Subtitle',
    initialValue: 'تم تغيير كلمة السر بنجاح',
  );

  return CompleteLoginView(title: title, subtitle: subtitle);
}

class CompleteLoginView extends StatelessWidget {
  final String title;
  final String subtitle;

  const CompleteLoginView({
    super.key,
    this.title = 'تم التحديث',
    this.subtitle = 'تم تغيير كلمة السر بنجاح',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: Styles.headline200Heavy,
                textAlign: TextAlign.center,
              ),
              const SmallSpace(),
              Text(
                subtitle,
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
