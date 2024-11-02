import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
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
            'لديك حساب؟',
            style: Styles.paragraph200Light,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              ' أدخل الآن!',
              style: Styles.paragraph100Heavy,
            ),
          ),
        ],
      ),
    );
  }
}
