import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:widgetbook/widgetbook.dart';
import '../login_view.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'have an account', type: HaveAnAccount)
Widget haveAnAccount(BuildContext context) => HaveAnAccount(
      label: context.knobs.string(
        label: 'Title',
        initialValue: ' لديك حساب؟',
      ),
    );

class HaveAnAccount extends StatelessWidget {
  final String label;

  const HaveAnAccount({
    super.key,
    this.label = 'لديك حساب؟',
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginView(),
                ),
              );
            },
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
