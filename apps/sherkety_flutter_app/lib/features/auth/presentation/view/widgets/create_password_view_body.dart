import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/helper/email_helper.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/password_block.dart';

class CreatePasswordViewBody extends StatefulWidget {
  const CreatePasswordViewBody({
    super.key,
    required this.passwordController,
    required this.emailController,
    required this.checkPasswordController,
  });

  final TextEditingController passwordController;
  final TextEditingController emailController;
  final TextEditingController checkPasswordController;

  @override
  State<CreatePasswordViewBody> createState() => _CreatePasswordViewBodyState();
}

class _CreatePasswordViewBodyState extends State<CreatePasswordViewBody> {
  String? validationMessage;
  TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DefaultAppBar(),
          const BaseSpacing(),
          Text(
            'كلمة السر',
            style: Styles.headline200Heavy,
          ),
          const SmallSpace(),
          Text(
            'يجب أن تكون كلمة المرور جديدة ومختلفة عن كل كلمات المرور التي استخدمتها سابقًا',
            style: Styles.paragraph100Light,
          ),
          const BaseSpacing(),
          PasswordBlock(
            passwordController: widget.passwordController,
            rePasswordController: rePasswordController,
            checkPasswordController: widget.checkPasswordController,
          ),
          const BaseSpacing(),
          CustomTextInput(
            controller: widget.emailController,
            hintText: 'البريد الإلكتروني',
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              setState(() {
                validationMessage = EmailHelper.validateEmail(value);
              });
            },
          ),
          const BaseSpacing(),
          if (validationMessage != null)
            DangerContainer(
              text: validationMessage!,
            ),
        ],
      ),
    );
  }
}
