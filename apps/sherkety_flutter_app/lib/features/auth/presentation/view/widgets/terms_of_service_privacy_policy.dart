import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class TermsOfServicePrivacyPolicy extends StatelessWidget {
  const TermsOfServicePrivacyPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Text(
            'لقد قراءت وفهمت',
            style: Styles.paragraph200Light,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              ' شروط الخدمة ',
              style: Styles.paragraph100Heavy,
            ),
          ),
          Text(
            'و',
            style: Styles.paragraph200Light,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              ' سياسة الخصوصية ',
              style: Styles.paragraph100Heavy,
            ),
          ),
          Text(
            'وأوافق عليها',
            style: Styles.paragraph200Light,
          ),
        ],
      ),
    );
  }
}
