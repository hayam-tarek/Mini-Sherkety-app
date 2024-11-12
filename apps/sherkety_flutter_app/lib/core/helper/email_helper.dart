abstract class EmailHelper {
  static final RegExp emailValidationRule = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  static String? validateEmail(String email) {
    if (!emailValidationRule.hasMatch(email)) {
      return 'البريد الإلكتروني غير صالح.';
    } else {
      return null;
    }
  }
}
