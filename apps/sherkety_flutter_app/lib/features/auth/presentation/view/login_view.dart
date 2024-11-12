import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/contacts.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/forget_pass_text.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/no_account_login.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/password_text_field.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/text_register_with.dart';
import 'package:sherkety_flutter_app/features/home/presentation/views/home_view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController controller = TextEditingController();
  final TextEditingController codePickerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AssetSpacing.paddingHorizontal,
            vertical: AssetSpacing.paddingVertical,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' مرحبا بعودتك!', style: Styles.headline200Heavy),
                Text('يسعدنا رؤيتك مرة أخرى!', style: Styles.headline200light),
                const BaseSpacing(),
                PhoneNumber(
                  phoneController: controller,
                  codePickerController: codePickerController,
                ),
                const BaseSpacing(),
                const PasswordTextField(),
                const BaseSpacing(),
                const ForgetPassText(),
                const BaseSpacing(),
                DefaultButton(
                  text: 'دخول',
                  onPressed: () async {
                    // try {
                    //   final credential = PhoneAuthProvider.credential(
                    //     verificationId: _verificationId,
                    //     smsCode: '123456',
                    //   );
                    //   await FirebaseAuth.instance
                    //       .signInWithCredential(credential);
                    //   log('Successfully signed in!');
                    // } catch (e) {
                    //   log('Failed to sign in: $e');
                    // }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  },
                ),
                const BaseSpacing(),
                const TextRegisterWith(),
                const BaseSpacing(),
                const Contacts(),
                const SizedBox(height: 290),
                const NoAccountLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
