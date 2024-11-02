import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';

class PhoneCodePicker extends StatelessWidget {
  const PhoneCodePicker({
    super.key,
    required this.initialSelection,
    this.onChanged,
  });

  final String initialSelection;
  final void Function(CountryCode)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: AssetColors.borderWeakColor,
        ),
        borderRadius: BorderRadius.circular(
          AssetSpacing.borderRadius,
        ),
      ),
      child: Center(
        child: CountryCodePicker(
          onChanged: onChanged,
          initialSelection: initialSelection,
          favorite: const ['+02', 'EG', '+966', 'SA'],
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
        ),
      ),
    );
  }
}
