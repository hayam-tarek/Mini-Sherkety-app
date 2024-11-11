import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';

class ResendCodeButton extends StatefulWidget {
  const ResendCodeButton({
    super.key,
  });

  @override
  State<ResendCodeButton> createState() => _ResendCodeButtonState();
}

class _ResendCodeButtonState extends State<ResendCodeButton> {
  bool isCountingDown = false;
  late int countdown;
  Timer? timer;
  @override
  void initState() {
    countdown = 60;
    startCountdown();
    super.initState();
  }

  void startCountdown() {
    setState(() {
      isCountingDown = true;
    });

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
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
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      fontSize: 14,
      text: isCountingDown
          ? ' إعادة الإرسال بعد $countdown'
          : 'إعادة ارسال الرمز',
      onPressed: isCountingDown
          ? null
          : () {
              startCountdown();
              CustomToast.show(
                context,
                'تم ارسال رمز التفعيل',
              );
            },
    );
  }
}
