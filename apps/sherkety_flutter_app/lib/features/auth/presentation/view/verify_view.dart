import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/default_button.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_button.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/code_input.dart';

class VerifyView extends StatelessWidget {
  VerifyView({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;
  final List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButton(),
              const BaseSpacing(),
              Text(
                'أدخل الرمز',
                style: Styles.headline200Heavy,
              ),
              const SmallSpace(),
              Text(
                'أرسلنا رمزا مكونا من 4 أرقام إلي',
                style: Styles.paragraph100Light,
              ),
              const SmallSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'إلى $phoneNumber ',
                    style: Styles.paragraph100Light,
                  ),
                  SmallButton(
                    text: 'تعديل الرقم',
                    onPressed: () {},
                  ),
                ],
              ),
              const BaseSpacing(),
              CodeInput(
                controllers: controllers,
              ),
              const BaseSpacing(),
              SizedBox(
                width: 135,
                height: 32,
                child: DefaultButton(
                  fontSize: 14,
                  text: 'إعادة ارسال الرمز',
                  onPressed: () {},
                ),
              ),
              const Expanded(
                child: SizedBox(
                  width: double.infinity,
                ),
              ),
              DefaultButton(
                text: 'أكد الرمز',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
