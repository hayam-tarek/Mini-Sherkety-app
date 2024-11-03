import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/default_button.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/change_number_button.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/code_input.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/resend_code_button.dart';

class VerifyView extends StatefulWidget {
  const VerifyView({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  final List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  String getCode() {
    return controllers.map((controller) => controller.text).join();
  }

  String? fullCode;

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
              const Align(
                alignment: Alignment.centerRight,
                child: BackButton(),
              ),
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
                    'إلى ${widget.phoneNumber} ',
                    style: Styles.paragraph100Light,
                  ),
                  ChangeNumberButton(),
                ],
              ),
              const BaseSpacing(),
              CodeInput(
                controllers: controllers,
              ),
              const BaseSpacing(),
              const SizedBox(
                width: 135,
                height: 32,
                child: ResendCodeButton(),
              ),
              const Expanded(
                child: SizedBox(
                  width: double.infinity,
                ),
              ),
              DefaultButton(
                text: 'أكد الرمز',
                onPressed: () {
                  fullCode = getCode();
                  if (fullCode != null) {
                    if (fullCode!.length != 4) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('الرمز يجب أن يكون 4 أرقام'),
                        ),
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
