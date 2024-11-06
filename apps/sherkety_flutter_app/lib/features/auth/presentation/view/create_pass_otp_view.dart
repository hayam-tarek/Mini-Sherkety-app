import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/small_space.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/resend_code_button.dart';

import 'create_new_pass_login_view.dart';

class CreatePassOtpView extends StatefulWidget {
  const CreatePassOtpView({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;

  @override
  State<CreatePassOtpView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<CreatePassOtpView> {
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
                    } else {
                      // Navigate to the next page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CreateNewPassLoginView(), // Replace with your next screen
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
