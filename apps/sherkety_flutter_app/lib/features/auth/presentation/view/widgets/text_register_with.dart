import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'text register with', type: TextRegisterWith)
Widget haveAnAccount(BuildContext context) => TextRegisterWith(
      label: context.knobs.string(
        label: 'Title',
        initialValue: 'أو اشترك باستخدام ',
      ),
    );

class TextRegisterWith extends StatelessWidget {
  final String label;

  const TextRegisterWith({
    super.key,
    this.label = 'أو اشترك باستخدام ',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Text(
          label, // Display the label dynamically
          style: Styles.paragraph200Light,
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
