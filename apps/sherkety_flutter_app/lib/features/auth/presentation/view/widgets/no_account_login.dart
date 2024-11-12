import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/register_view.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'no an account', type: NoAccountLogin)
Widget noAccountLogin(BuildContext context) => NoAccountLogin(
      label: context.knobs.string(
        label: 'Title',
        initialValue: 'ليس لديك حساب؟',
      ),
    );

class NoAccountLogin extends StatelessWidget {
  final String label;

  const NoAccountLogin({
    super.key,
    this.label = 'ليس لديك حساب؟',
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterView(),
                ),
              );
            },
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
