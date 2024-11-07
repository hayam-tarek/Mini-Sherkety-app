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

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController controller = TextEditingController();

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
                PhoneNumber(controller: controller),
                const BaseSpacing(),
                const PasswordTextField(),
                const BaseSpacing(),
                const ForgetPassText(),
                const BaseSpacing(),
                DefaultButton(
                  text: 'دخول',
                  onPressed: () {},
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
