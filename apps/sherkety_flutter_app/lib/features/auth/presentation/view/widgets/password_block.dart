import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/password_validation_item.dart';

class PasswordBlock extends StatefulWidget {
  const PasswordBlock({
    super.key,
    required this.passwordController,
    required this.rePasswordController,
    required this.checkPasswordController,
  });
  final TextEditingController passwordController;
  final TextEditingController rePasswordController;
  final TextEditingController checkPasswordController;

  @override
  State<PasswordBlock> createState() => _PasswordBlockState();
}

class _PasswordBlockState extends State<PasswordBlock> {
  bool match = true;
  bool passwordHave8CharactersCase = false;
  bool passwordHaveUpperCase = false;
  bool passwordHaveLowerCase = false;
  bool passwordHaveSpecialCharacter = false;
  bool passwordHaveNumber = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextInput(
          controller: widget.passwordController,
          hintText: 'كلمة السر',
          obscureText: true,
          onChanged: (value) {
            if (widget.rePasswordController.text.isNotEmpty) {
              setState(() {
                match = widget.passwordController.text ==
                    widget.rePasswordController.text;
              });
            }
            setState(() {
              passwordHave8CharactersCase =
                  value.length >= 8 && value.contains(RegExp(r'(?=.*[A-Z])'));
              passwordHaveUpperCase = value.contains(RegExp(r'(?=.*[A-Z])'));
              passwordHaveLowerCase = value.contains(RegExp(r'(?=.*[a-z])'));
              passwordHaveSpecialCharacter =
                  value.contains(RegExp(r'(?=.*[!@#$%^&*])'));
              passwordHaveNumber = value.contains(RegExp(r'(?=.*[0-9])'));
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
          iconColor:
              passwordHave8CharactersCase ? AssetColors.bgSuccessDefault : null,
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
      ],
    );
  }
}
