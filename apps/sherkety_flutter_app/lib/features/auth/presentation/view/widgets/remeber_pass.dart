import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class RemeberPass extends StatelessWidget {
  const RemeberPass({
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
            ' تذكرت كلمة السر؟',
            style: Styles.paragraph200Light,
          ),
          InkWell(
            onTap: () {
              // //  Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => LoginView(),
              //   //  ),
              // );
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
