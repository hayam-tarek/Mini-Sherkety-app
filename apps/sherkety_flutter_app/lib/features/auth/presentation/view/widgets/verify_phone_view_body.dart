import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/change_number_button.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/resend_code_button.dart';

class VerifyViewBody extends StatelessWidget {
  const VerifyViewBody({
    super.key,
    required this.phoneNumber,
    required this.controllers,
    required this.correctCode,
  });

  final String phoneNumber;
  final List<TextEditingController> controllers;
  final bool correctCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DefaultAppBar(),
        const BaseSpacing(),
        Text(
          'أدخل الرمز',
          style: Styles.headline200Heavy,
        ),
        const SmallSpace(),
        Text(
          'أرسلنا رمزا مكونا من {${controllers.length}} أرقام إلي',
          style: Styles.paragraph100Light,
        ),
        const SmallSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'إلى $phoneNumber ',
              style: Styles.paragraph100Light,
            ),
            const ChangeNumberButton(),
          ],
        ),
        const BaseSpacing(),
        CodeInput(
          controllers: controllers,
        ),
        const SmallSpace(),
        if (!correctCode)
          const DangerContainer(
            text: 'رمز التعريف غير صحيح.',
          ),
        const BaseSpacing(),
        const SizedBox(
          width: 135,
          height: 32,
          child: ResendCodeButton(),
        ),
      ],
    );
  }
}
