import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/have_an_account.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/register_body.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                child: HaveAnAccount(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
