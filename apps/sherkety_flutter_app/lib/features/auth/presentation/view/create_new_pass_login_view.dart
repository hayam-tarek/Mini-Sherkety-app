import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'complete_login_view.dart';
import 'widgets/create_pass_login_view_body.dart';

class CreateNewPassLoginView extends StatefulWidget {
  const CreateNewPassLoginView({super.key});

  @override
  State<CreateNewPassLoginView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreateNewPassLoginView> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AssetSpacing.paddingHorizontal,
            vertical: AssetSpacing.paddingVertical,
          ),
          child: Column(
            children: [
              Expanded(
                child: CreatePassLoginViewBody(
                  passwordController: passwordController,
                  rePasswordController: rePasswordController,
                  emailController: emailController,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompleteLoginView(),
                      ),
                    );
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
