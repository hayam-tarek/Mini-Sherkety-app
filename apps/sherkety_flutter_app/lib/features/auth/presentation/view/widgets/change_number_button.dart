import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/change_number_view.dart';

class ChangeNumberButton extends StatelessWidget {
  const ChangeNumberButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SmallButton(
      text: 'تعديل الرقم',
      onPressed: () {
        changeNumberView(context);
      },
    );
  }
}
