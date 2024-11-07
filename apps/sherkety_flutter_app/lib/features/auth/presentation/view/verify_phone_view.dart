import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/create_password_view.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/verify_phone_view_body.dart';

class VerifyPhoneView extends StatefulWidget {
  const VerifyPhoneView({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;

  @override
  State<VerifyPhoneView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyPhoneView> {
  final List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  String getCode() {
    return controllers.map((controller) => controller.text).join();
  }

  String? fullCode;

  bool correctCode = true;

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
                child: VerifyViewBody(
                  phoneNumber: widget.phoneNumber,
                  controllers: controllers,
                  correctCode: correctCode,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 32,
                  top: 16,
                ),
                child: DefaultButton(
                  text: 'أكد الرمز',
                  onPressed: () {
                    fullCode = getCode();
                    if (fullCode != null) {
                      if (fullCode!.length != 4) {
                        setState(() {
                          correctCode = false;
                        });
                      } else {
                        correctCode = true;
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const CreatePasswordView();
                            },
                          ),
                        );
                      }
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
