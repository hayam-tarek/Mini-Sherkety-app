import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import '../change_number_view.dart';

@widgetbook.UseCase(name: 'change number button', type: ChangeNumberButton)
Widget changeNumberButtonUseCase(BuildContext context) {
  final String buttonText = context.knobs.string(
    label: 'Button Text',
    initialValue: 'تعديل الرقم',
  );

  final bool isButtonEnabled = context.knobs.boolean(
    label: 'Is Button Enabled',
    initialValue: true,
  );

  return ChangeNumberButton(
    buttonText: buttonText,
    isEnabled: isButtonEnabled,
  );
}

class ChangeNumberButton extends StatelessWidget {
  final String? buttonText;
  final bool? isEnabled;

  const ChangeNumberButton({
    super.key,
    this.buttonText = 'تعديل الرقم',
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SmallButton(
      text: buttonText ?? 'تعديل الرقم',
      onPressed: isEnabled ?? true
          ? () {
              changeNumberView(context);
            }
          : null,
    );
  }
}
