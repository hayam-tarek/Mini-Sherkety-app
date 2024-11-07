import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

import '../create_new_pass_login_view.dart';

class ForgetPassText extends StatelessWidget {
  const ForgetPassText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, // Aligns text to the left
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateNewPassLoginView(),
            ),
          );
        },
        child: Text(
          'نسيت كلمة السر؟',
          style: Styles.paragraph100Heavy,
        ),
      ),
    );
  }
}
