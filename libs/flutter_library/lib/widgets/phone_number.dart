import 'package:flutter/material.dart';
import 'package:flutter_library/helper/phone_number.dart';
import 'package:flutter_library/widgets/custom_text_input.dart';
import 'package:flutter_library/widgets/danger_container.dart';
import 'package:flutter_library/widgets/phone_code_picker.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({
    super.key,
    required this.phoneController,
    required this.codePickerController,
  });
  final TextEditingController phoneController;
  final TextEditingController codePickerController;

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String selectedCode = '+20';

  String? validationMessage;
  @override
  void initState() {
    widget.codePickerController.text = selectedCode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextInput(
                controller: widget.phoneController,
                hintText: 'رقم الهاتف ...',
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  setState(() {
                    validationMessage = PhoneNumberHelper.validatePhoneNumber(
                      phoneNumber: widget.phoneController.text,
                      selectedCode: selectedCode,
                    );
                  });
                },
              ),
            ),
            const SizedBox(width: 8),
            PhoneCodePicker(
              initialSelection: selectedCode,
              onChanged: (value) {
                setState(() {
                  selectedCode = value.dialCode!;
                  widget.codePickerController.text = value.dialCode!;
                });
              },
            ),
          ],
        ),
        if (validationMessage != null)
          Column(
            children: [
              const SizedBox(height: 8),
              DangerContainer(
                text: validationMessage!,
              ),
            ],
          ),
      ],
    );
  }
}
