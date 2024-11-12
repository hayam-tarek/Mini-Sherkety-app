import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/have_an_account.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/register_body.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'signup Page', type: RegisterView)
Widget registerViewuseCase(BuildContext context) => const RegisterView();

class RegisterView extends StatelessWidget {
  const RegisterView({super.key}); // Ensure only one constructor exists

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AssetSpacing.paddingHorizontal,
          ),
          child: Column(
            children: [
              Expanded(
                child: RegisterBody(),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 32,
                  top: 16,
                ),
                child: HaveAnAccount(
                  label: 'ليس لديك حساب؟', // Display custom label
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
