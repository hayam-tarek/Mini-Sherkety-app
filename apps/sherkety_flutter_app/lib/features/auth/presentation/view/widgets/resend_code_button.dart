import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/default_button.dart';

class ResendCodeButton extends StatefulWidget {
  const ResendCodeButton({
    super.key,
  });

  @override
  State<ResendCodeButton> createState() => _ResendCodeButtonState();
}

class _ResendCodeButtonState extends State<ResendCodeButton> {
  bool isCountingDown = false;
  int countdown = 60;

  void startCountdown() {
    setState(() {
      isCountingDown = true;
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        setState(() {
          countdown--;
        });
      } else {
        timer.cancel();
        setState(() {
          isCountingDown = false;
          countdown = 60;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      fontSize: 14,
      text: isCountingDown
          ? ' إعادة الإرسال بعد $countdown'
          : 'إعادة ارسال الرمز',
      onPressed: isCountingDown ? null : startCountdown,
    );
  }
}
