import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'bottom sheet', type: BottomSheetBody)
Widget bottomSheetBodyuseCase(BuildContext context) => const BottomSheetBody();

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
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
