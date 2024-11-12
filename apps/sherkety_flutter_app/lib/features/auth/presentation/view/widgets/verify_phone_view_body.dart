import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/change_number_button.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/resend_code_button.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook/widgetbook.dart'; // Import Widgetbook for knobs

@widgetbook.UseCase(name: 'verify Page', type: VerifyViewBody)
Widget VerifyViewBodyUseCase(BuildContext context) {
  // Define knobs for dynamic control in Widgetbook
  final String phoneNumber = context.knobs.string(
    label: 'Phone Number',
    initialValue: '1234567890', // Default phone number for testing
  );

  final bool correctCode = context.knobs.boolean(
    label: 'Correct Code',
    initialValue: true, // Default correct code status for testing
  );

  // Initialize a list of 4 TextEditingControllers for code input
  final List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  // Return the VerifyViewBody widget with knobs applied
  return VerifyViewBody(
    phoneNumber: phoneNumber,
    controllers: controllers,
    correctCode: correctCode,
  );
}

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
          'أرسلنا رمزا مكونا من 4 أرقام إلي',
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
