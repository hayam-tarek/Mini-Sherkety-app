import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/helper/email_helper.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/complete_register_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/create_password_view_body.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/regiser_state.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/register_provider.dart';

class CreatePasswordView extends StatefulWidget {
  const CreatePasswordView({super.key});

  @override
  State<CreatePasswordView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreatePasswordView> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController checkPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, WidgetRef ref, child) {
          RegisterState registerState = ref.watch(registerProvider);
          log(registerState.toString());
          ref.listen<RegisterState>(registerProvider, (previous, next) {
            if (registerState is LinkEmailPasswordSuccess) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CompleteRegisterView(),
                ),
              );
            } else if (registerState is LinkEmailPasswordFailure) {
              CustomErrorToast.show(context, 'حدث خطأ ما');
            }
          });
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AssetSpacing.paddingHorizontal,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: CreatePasswordViewBody(
                      passwordController: passwordController,
                      emailController: emailController,
                      checkPasswordController: checkPasswordController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 32,
                      top: 16,
                    ),
                    child: DefaultButton(
                      text: registerState is LinkEmailPasswordLoading
                          ? 'الرجاء الانتظار'
                          : 'حفظ',
                      onPressed: () {
                        if (checkPasswordController.text == 'true' &&
                            EmailHelper.validateEmail(emailController.text) ==
                                null) {
                          ref.read(registerProvider.notifier).linkEmailPassword(
                                email: emailController.text,
                                password: passwordController.text,
                              );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
