import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/password_validation_item.dart';

class CreatePassLoginViewBody extends StatelessWidget {
  const CreatePassLoginViewBody({
    super.key,
    required this.passwordController,
    required this.rePasswordController,
    required this.emailController,
  });

  final TextEditingController passwordController;
  final TextEditingController rePasswordController;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DefaultAppBar(),
          const BaseSpacing(),
          Text(
            ' ادخل كلمة سر جديدة',
            style: Styles.headline200Heavy,
          ),
          const SmallSpace(),
          Text(
            'يجب أن تكون كلمة المرور جديدة ومختلفة عن كل كلمات المرور التي استخدمتها سابقًا',
            style: Styles.paragraph100Light,
          ),
          const BaseSpacing(),
          CustomTextInput(
            controller: passwordController,
            hintText: 'كلمة السر',
            obscureText: true,
          ),
          const BaseSpacing(),
          CustomTextInput(
            controller: rePasswordController,
            hintText: 'تأكيد كلمة السر ...',
            obscureText: true,
          ),
          const BaseSpacing(),
          Text(
            'يجب أن تكون كلمة المرور:',
            style: Styles.paragraph200Light,
          ),
          const PasswordValidationItem(
            text: 'بطول 8 أحرف على الأقل.',
          ),
          const PasswordValidationItem(
            text: 'تحتوي على حرف واحد على الأقل بأحرف كبيرة.',
          ),
          const PasswordValidationItem(
            text: 'تحتوي على حرف واحد على الأقل بأحرف صغيرة.',
          ),
          const PasswordValidationItem(
            text: 'تحتوي على حرف خاص واحد على الأقل.',
          ),
          const PasswordValidationItem(
            text: 'تحتوي على رقم واحد على الأقل.',
          ),
          const BaseSpacing(),
        ],
      ),
    );
  }
}
