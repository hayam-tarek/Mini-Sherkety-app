import 'package:flutter/material.dart';
import 'package:flutter_library/widgets/default_button.dart';
import 'package:flutter_library/widgets/phone_number.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/create_pass_otp_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/remeber_pass.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/terms_of_service_privacy_policy.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});
  final TextEditingController phoneController = TextEditingController();
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
                const Align(
                  alignment: Alignment.centerRight,
                  child: BackButton(),
                ),
                const BaseSpacing(),
                Text(' نسيت كلمة السر؟', style: Styles.headline200Heavy),
                Text(
                    'لا تقلق! يحدث هذا أحيانًا. من فضلك، أدخل رقم جوالك المرتبط بحسابك.',
                    style: Styles.paragraph100Light),
                const BaseSpacing(),
                PhoneNumber(
                  phoneController: phoneController,
                  codePickerController: codePickerController,
                ),
                const BaseSpacing(),
                const SizedBox(height: 380),
                const TermsOfServicePrivacyPolicy(),
                const BaseSpacing(),
                DefaultButton(
                  text: 'ألتالي',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreatePassOtpView(
                          phoneNumber: phoneController.text,
                        ),
                      ),
                    );
                  },
                ),
                const BaseSpacing(),
                const RemeberPass(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
