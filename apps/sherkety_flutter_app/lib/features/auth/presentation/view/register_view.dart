import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/default_button.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/verify_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/contacts.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/have_an_account.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/phone_number.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/terms_of_service_privacy_policy.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/text_register_with.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
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
                Text('مرحبا!', style: Styles.headline200Heavy),
                Text('سجل الآن .. لتبدأ', style: Styles.headline200light),
                const BaseSpacing(),
                PhoneNumber(controller: controller),
                const BaseSpacing(),
                const TermsOfServicePrivacyPolicy(),
                const BaseSpacing(),
                DefaultButton(
                  text: 'دخول',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerifyView(
                          phoneNumber: controller.text,
                        ),
                      ),
                    );
                  },
                ),
                const BaseSpacing(),
                const TextRegisterWith(),
                const BaseSpacing(),
                const Contacts(),
                const SizedBox(height: 280),
                const HaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
