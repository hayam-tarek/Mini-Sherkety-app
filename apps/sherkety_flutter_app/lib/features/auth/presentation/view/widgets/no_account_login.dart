import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class NoAccountLogin extends StatelessWidget {
  const NoAccountLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          Text(
            'ليس لديك حساب؟',
            style: Styles.paragraph100Light,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              ' سجل الآن!',
              style: Styles.paragraph100Heavy,
            ),
          ),
        ],
      ),
    );
  }
}
