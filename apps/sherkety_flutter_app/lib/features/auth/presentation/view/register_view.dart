import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/default_button.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/contacts.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/have_an_account.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/phone_number.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/terms_of_service_privacy_policy.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/text_register_with.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool autoValid = false;

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
                const PhoneNumber(),
                const BaseSpacing(),
                const TermsOfServicePrivacyPolicy(),
                const BaseSpacing(),
                DefaultButton(
                  text: 'دخول',
                  onPressed: () {
                    setState(() {
                      autoValid = true;
                    });
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

class DangerContainer extends StatelessWidget {
  const DangerContainer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: 361,
          decoration: BoxDecoration(
            color: AssetColors.bgDangerWeakColor,
            borderRadius: BorderRadius.circular(
              AssetSpacing.borderRadius,
            ),
          ),
          child: Wrap(
            children: [
              const Icon(
                Icons.error_outline,
                color: AssetColors.iconDangerDefaultColor,
              ),
              const SizedBox(width: 4),
              Text(
                text,
                style: Styles.paragraph300Light.copyWith(
                  color: AssetColors.textDangerDefaultColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
