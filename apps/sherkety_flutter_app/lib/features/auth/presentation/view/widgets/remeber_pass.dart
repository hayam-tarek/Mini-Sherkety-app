import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../login_view.dart';

@widgetbook.UseCase(name: 'remember', type: RemeberPass)
Widget remeberPass(BuildContext context) => RemeberPass(
      label: context.knobs.string(
        label: 'Title',
        initialValue: 'تذكرت كلمة السر؟',
      ),
    );

class RemeberPass extends StatelessWidget {
  final String label;

  const RemeberPass({
    super.key,
    this.label = 'تذكرت كلمة السر؟',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          Text(
            ' تذكرت كلمة السر؟',
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
