
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sherkety_flutter_app/core/helper/phone_number_helper.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/verify_phone_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/contacts.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/text_register_with.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/regiser_state.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/register_provider.dart';

class RegisterBody extends ConsumerWidget {
  RegisterBody({
    super.key,
  });


  final TextEditingController phoneController = TextEditingController();
  final TextEditingController codePickerController = TextEditingController();


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    RegisterState registerState = ref.watch(registerProvider);
    log(registerState.toString());
    ref.listen<RegisterState>(registerProvider, (previous, next) {
      if (next is RegisterSuccess) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VerifyPhoneView(
              phoneNumber: codePickerController.text + phoneController.text,
              verificationId: next.verificationId,
            ),
          ),
        );
      } else if (next is RegisterFailure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.error)),
        );
      }
    });

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('مرحبا!', style: Styles.headline200Heavy),
          Text('سجل الآن .. لتبدأ', style: Styles.headline200light),
          const BaseSpacing(),
          PhoneNumber(
            phoneController: phoneController,
            codePickerController: codePickerController,
          ),
          const BaseSpacing(),
          // const TermsOfServicePrivacyPolicy(),
          const BaseSpacing(),
          DefaultButton(

            text: registerState is RegisterLoading ? 'جار التسجيل...' : 'دخول',
            onPressed: () async {
              if (PhoneNumberHelper.validatePhoneNumber(
                      phoneNumber: phoneController.text,
                      selectedCode: codePickerController.text) ==
                  null) {
                ref.read(registerProvider.notifier).register(
                      code: codePickerController.text,
                      phone: phoneController.text,
                    );
              } else {
                CustomErrorToast.show(context, 'حدث خطأ ما');
              }

            },
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
