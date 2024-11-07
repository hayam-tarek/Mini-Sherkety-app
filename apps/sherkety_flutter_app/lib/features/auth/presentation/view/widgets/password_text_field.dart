import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFAAADB1), width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'كلمة السر...',
          hintTextDirection: TextDirection.rtl,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        ),
        style: const TextStyle(
          fontSize: 16,
          fontFamily: 'Almarai',
        ),
      ),
    );
  }
}
