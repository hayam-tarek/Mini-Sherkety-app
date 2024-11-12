import 'package:flutter/material.dart';
import 'package:flutter_library/ui_lib.dart';
import 'package:sherkety_flutter_app/core/shared/widgets/base_spacing.dart';
import 'package:sherkety_flutter_app/features/home/presentation/views/widgets/bottom_sheet_body.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'home view body', type: HomeViewBody)
Widget homeViewBodyuseCase(BuildContext context) => HomeViewBody(
      buttonText1: context.knobs.string(
        label: 'Button 1 Text',
        initialValue: '+ طلب جديد', // Default value for the button text
      ),
    );

class HomeViewBody extends StatelessWidget {
  final String? buttonText1;

  const HomeViewBody({
    super.key,
    this.buttonText1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const BaseSpacing(),
          DefaultButton(
            text: buttonText1 ?? '+ طلب جديد',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return const BottomSheetBody();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
