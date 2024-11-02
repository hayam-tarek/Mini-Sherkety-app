import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class TextRegisterWith extends StatelessWidget {
  const TextRegisterWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Text(
          ' أو اشترك باستخدام  ',
          style: Styles.paragraph200Light,
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
