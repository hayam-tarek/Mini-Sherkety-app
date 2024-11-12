import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/complete_register_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/create_password_view_body.dart';

class CreatePasswordView extends StatefulWidget {
  const CreatePasswordView({super.key});

  @override
  State<CreatePasswordView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreatePasswordView> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController checkPasswordController = TextEditingController();

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
                child: CreatePasswordViewBody(
                  passwordController: passwordController,
                  rePasswordController: rePasswordController,
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
                  text: 'حفظ',
                  onPressed: () {
                    if (checkPasswordController.text == 'true') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CompleteRegisterView(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
