// import 'dart:developer';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/verify_phone_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/contacts.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/text_register_with.dart';

class RegisterBody extends StatelessWidget {
  RegisterBody({
    super.key,
  });

  final TextEditingController controller = TextEditingController();
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // String _verificationId = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('مرحبا!', style: Styles.headline200Heavy),
          Text('سجل الآن .. لتبدأ', style: Styles.headline200light),
          const BaseSpacing(),
          PhoneNumber(controller: controller),
          const BaseSpacing(),
          // const TermsOfServicePrivacyPolicy(),
          const BaseSpacing(),
          DefaultButton(
            text: 'دخول',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VerifyPhoneView(
                    phoneNumber: controller.text,
                  ),
                ),
              );
            },
            // async {
            //   try {
            //     await _auth.verifyPhoneNumber(
            //       phoneNumber: '+201116289719',
            //       verificationCompleted:
            //           (PhoneAuthCredential credential) async {
            //         await _auth.signInWithCredential(credential);
            //         log('sing in with credential');
            //       },
            //       verificationFailed: (FirebaseAuthException e) {
            //         log('Verification failed: ${e.message}');
            //       },
            //       codeSent: (String verificationId, int? resendToken) {
            //         log('Code sent to hayam');
            //       },
            //       codeAutoRetrievalTimeout: (String verificationId) {},
            //     );
            //   } on Exception catch (e) {
            //     log(e.toString());
            //   }

            //   );
            // },
          ),
          const BaseSpacing(),
          const TextRegisterWith(),
          const BaseSpacing(),
          const Contacts(),
        ],
      ),
    );
  }
}
