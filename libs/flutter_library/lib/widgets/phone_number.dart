import 'package:flutter/material.dart';
import 'package:flutter_library/helper/phone_number.dart';
import 'package:flutter_library/widgets/danger_container.dart';
import 'package:flutter_library/widgets/phone_code_picker.dart';
import 'package:flutter_library/widgets/phone_number_text_form_field.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String selectedCode = '+20';

  String? validationMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: PhoneNumberTextFormField(
                controller: widget.controller,
                onChanged: (value) {
                  setState(() {
                    validationMessage = PhoneNumberHelper.validatePhoneNumber(
                      phoneNumber: widget.controller.text,
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
