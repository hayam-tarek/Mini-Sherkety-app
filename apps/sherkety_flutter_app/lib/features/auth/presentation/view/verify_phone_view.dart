import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/create_password_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/verify_phone_view_body.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/sign_in_provider.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/sign_in_state.dart';

class VerifyPhoneView extends StatefulWidget {
  const VerifyPhoneView({
    super.key,
    required this.phoneNumber,
    required this.verificationId,
  });
  final String phoneNumber;
  final String verificationId;
  @override
  State<VerifyPhoneView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyPhoneView> {
  final List<TextEditingController> controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );

  String getCode() {
    return controllers.map((controller) => controller.text).join();
  }

  String? fullCode;

  bool correctCode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (
        context,
        WidgetRef ref,
        child,
      ) {
        SignInState signInState = ref.watch(signInProvider);
        log(signInState.toString());
        ref.listen<SignInState>(signInProvider, (previous, next) {
          if (next is SignInSuccess) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CreatePasswordView();
                },
              ),
            );
          } else if (next is SignInFailure) {
            setState(() {
              correctCode = false;
            });
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
                  child: VerifyViewBody(
                    phoneNumber: widget.phoneNumber,
                    controllers: controllers,
                    correctCode: correctCode,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32,
                    top: 16,
                  ),
                  child: DefaultButton(
                    text: signInState is SignInLoading
                        ? 'جار تأكيد الرمز...'
                        : 'أكد الرمز',
                    onPressed: () async {
                      fullCode = getCode();
                      if (fullCode != null) {
                        if (fullCode!.length != controllers.length) {
                          setState(() {
                            correctCode = false;
                          });
                        } else {
                          correctCode = true;
                          ref.read(signInProvider.notifier).signIn(
                                verificationId: widget.verificationId,
                                smsCode: fullCode!,
                              );
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
