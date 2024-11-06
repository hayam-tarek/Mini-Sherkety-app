import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';

class ChangeNumberButton extends StatelessWidget {
  ChangeNumberButton({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SmallButton(
      text: 'تعديل الرقم',
      onPressed: () {
        showDialog(
          barrierColor: AssetColors.brandDefault.withOpacity(.4),
          context: context,
          builder: (context) {
            return AlertDialog(
              insetPadding: const EdgeInsets.all(16),
              title: const Center(
                child: Text('تغيير رقم هاتفك'),
              ),
              content:
                  IntrinsicHeight(child: PhoneNumber(controller: controller)),
              actions: [
                Row(
                  children: [
                    Expanded(
                      child: DefaultButton(
                        text: 'تغيير رقم الهاتف',
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      height: 48,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AssetSpacing.borderRadius,
                            ),
                          ),
                          side: const BorderSide(
                            color: AssetColors.brandDefault,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'إلغاء',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AssetColors.brandDefault,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
