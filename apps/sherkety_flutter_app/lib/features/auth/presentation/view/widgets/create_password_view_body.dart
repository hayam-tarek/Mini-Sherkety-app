import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/helper/email_helper.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/password_validation_item.dart';

class CreatePasswordViewBody extends StatefulWidget {
  const CreatePasswordViewBody({
    super.key,
    required this.passwordController,
    required this.rePasswordController,
    required this.emailController,
    required this.checkPasswordController,
  });

  final TextEditingController passwordController;
  final TextEditingController rePasswordController;
  final TextEditingController emailController;
  final TextEditingController checkPasswordController;

  @override
  State<CreatePasswordViewBody> createState() => _CreatePasswordViewBodyState();
}

class _CreatePasswordViewBodyState extends State<CreatePasswordViewBody> {
  bool match = true;

  bool passwordHave8CharactersCase = false;
  bool passwordHaveUpperCase = false;
  bool passwordHaveLowerCase = false;
  bool passwordHaveSpecialCharacter = false;
  bool passwordHaveNumber = false;
  String? validationMessage;

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
          CustomTextInput(
            controller: widget.passwordController,
            hintText: 'كلمة السر',
            obscureText: true,
            onChanged: (value) {
              setState(() {
                match = widget.passwordController.text ==
                    widget.rePasswordController.text;
              });
              setState(() {
                passwordHave8CharactersCase = value.length >= 8 &&
                    value.contains(
                      RegExp(r'(?=.*[A-Z])'),
                    );
                passwordHaveUpperCase = value.contains(
                  RegExp(r'(?=.*[A-Z])'),
                );
                passwordHaveLowerCase = value.contains(
                  RegExp(r'(?=.*[a-z])'),
                );
                passwordHaveSpecialCharacter = value.contains(
                  RegExp(r'(?=.*[!@#$%^&*])'),
                );
                passwordHaveNumber = value.contains(
                  RegExp(r'(?=.*[0-9])'),
                );
              });
            },
          ),
          const BaseSpacing(),
          CustomTextInput(
            controller: widget.rePasswordController,
            hintText: 'تأكيد كلمة السر ...',
            obscureText: true,
            onChanged: (value) {
              setState(() {
                match = widget.passwordController.text ==
                    widget.rePasswordController.text;
              });
              setState(() {
                if (passwordHave8CharactersCase &&
                    passwordHaveUpperCase &&
                    passwordHaveLowerCase &&
                    passwordHaveSpecialCharacter &&
                    passwordHaveNumber &&
                    match) {
                  widget.checkPasswordController.text = 'true';
                } else {
                  widget.checkPasswordController.text = 'false';
                }
              });
            },
          ),
          const BaseSpacing(),
          if (!match)
            const Column(
              children: [
                DangerContainer(
                  text: 'كلمة السر غير متطابقة',
                ),
                BaseSpacing(),
              ],
            ),
          Text(
            'يجب أن تكون كلمة المرور:',
            style: Styles.paragraph200Light,
          ),
          PasswordValidationItem(
            text: 'بطول 8 أحرف على الأقل.',
            iconColor: passwordHave8CharactersCase
                ? AssetColors.bgSuccessDefault
                : null,
          ),
          PasswordValidationItem(
            text: 'تحتوي على حرف واحد على الأقل بأحرف كبيرة.',
            iconColor:
                passwordHaveUpperCase ? AssetColors.bgSuccessDefault : null,
          ),
          PasswordValidationItem(
            text: 'تحتوي على حرف واحد على الأقل بأحرف صغيرة.',
            iconColor:
                passwordHaveLowerCase ? AssetColors.bgSuccessDefault : null,
          ),
          PasswordValidationItem(
            text: 'تحتوي على حرف خاص واحد على الأقل.',
            iconColor: passwordHaveSpecialCharacter
                ? AssetColors.bgSuccessDefault
                : null,
          ),
          PasswordValidationItem(
            text: 'تحتوي على رقم واحد على الأقل.',
            iconColor: passwordHaveNumber ? AssetColors.bgSuccessDefault : null,
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
