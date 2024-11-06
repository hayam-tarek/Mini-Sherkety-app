abstract class PhoneNumberHelper {
  static final Map<String, RegExp> phoneValidationRules = {
    '+1': RegExp(r'^\d{10}$'),
    '+20': RegExp(r'^\d{10,11}$'),
    '+44': RegExp(r'^\d{10}$'),
    '+91': RegExp(r'^\d{10}$'),
    '+81': RegExp(r'^\d{10}$'),
    '+49': RegExp(r'^\d{10,11}$'),
    '+61': RegExp(r'^\d{9}$'),
    '+33': RegExp(r'^\d{9}$'),
    '+55': RegExp(r'^\d{10,11}$'),
    '+234': RegExp(r'^\d{10}$'),
    '+971': RegExp(r'^\d{9}$'),
    '+86': RegExp(r'^\d{11}$'),
    '+7': RegExp(r'^\d{10}$'),
    '+39': RegExp(r'^\d{10}$'),
    '+52': RegExp(r'^\d{10}$'),
  };
  static String? validatePhoneNumber({
    required String phoneNumber,
    required String selectedCode,
  }) {
    if (phoneValidationRules.containsKey(selectedCode)) {
      if (!phoneValidationRules[selectedCode]!.hasMatch(
        phoneNumber,
      )) {
        return 'رقم الهاتف غير صالح.';
      } else {
        return null;
      }
    } else {
      return 'غير مدعوم.';
    }
  }
}
