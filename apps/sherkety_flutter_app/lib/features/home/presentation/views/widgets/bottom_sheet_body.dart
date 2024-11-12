import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'bottom sheet', type: BottomSheetBody)
Widget bottomSheetBodyuseCase(BuildContext context) => BottomSheetBody(
      buttonText1: context.knobs.string(
        label: 'Button 1 Text',
        initialValue: 'تأسيس شركة جديدة',
      ),
      buttonText2: context.knobs.string(
        label: 'Button 2 Text',
        initialValue: 'الخدمات الضريبية',
      ),
      buttonText3: context.knobs.string(
        label: 'Button 3 Text',
        initialValue: 'مستخرجات حديثة',
      ),
      buttonText4: context.knobs.string(
        label: 'Button 4 Text',
        initialValue: 'الجمعيات العمومية',
      ),
      buttonText5: context.knobs.string(
        label: 'Button 5 Text',
        initialValue: 'تسجيل العلامات التجارية',
      ),
      buttonText6: context.knobs.string(
        label: 'Button 6 Text',
        initialValue: 'التعديلات',
      ),
      buttonText7: context.knobs.string(
        label: 'Button 7 Text',
        initialValue: 'حجز عنوان افتراضي',
      ),
      cancelButtonText: context.knobs.string(
        label: 'Cancel Button Text',
        initialValue: 'إلغاء',
      ),
    );

class BottomSheetBody extends StatelessWidget {
  final String? buttonText1;
  final String? buttonText2;
  final String? buttonText3;
  final String? buttonText4;
  final String? buttonText5;
  final String? buttonText6;
  final String? buttonText7;
  final String? cancelButtonText;

  const BottomSheetBody({
    super.key,
    this.buttonText1,
    this.buttonText2,
    this.buttonText3,
    this.buttonText4,
    this.buttonText5,
    this.buttonText6,
    this.buttonText7,
    this.cancelButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const BaseSpacing(),
        Text(
          'ما طلبك؟',
          style: Styles.headline300Heavy,
        ),
        const BaseSpacing(),
        DefaultButton(
          text: 'تأسيس شركة جديدة',
          backgroundColor: const Color(0xff4A42EB),
          onPressed: () {},
        ),
        const BaseSpacing(),
        DefaultButton(
          text: 'الخدمات الضريبية',
          backgroundColor: const Color(0xff157EFB),
          onPressed: () {},
        ),
        const BaseSpacing(),
        DefaultButton(
          text: "مستخرجات حديثة",
          backgroundColor: const Color(0xff5ABFEE),
          onPressed: () {},
        ),
        const BaseSpacing(),
        DefaultButton(
          text: "الجمعيات العمومية",
          backgroundColor: const Color(0xff22C7BE),
          onPressed: () {},
        ),
        const BaseSpacing(),
        DefaultButton(
          text: "تسجيل العلامات التجارية",
          backgroundColor: const Color(0xff34CB4A),
          onPressed: () {},
        ),
        const BaseSpacing(),
        DefaultButton(
          text: "التعديلات",
          backgroundColor: const Color(0xffFECB2F),
          onPressed: () {},
        ),
        const BaseSpacing(),
        DefaultButton(
          text: "حجز عنوان افتراضي",
          backgroundColor: const Color(0xffFC3E38),
          onPressed: () {},
        ),
        const BaseSpacing(),
        const Divider(
          endIndent: 16,
          indent: 16,
        ),
        const BaseSpacing(),
        DefaultButton(
          text: 'إلغاء',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const BaseSpacing(),
      ],
    );
  }
}
