import 'package:email_validator/email_validator.dart';

class TextFieldValidationService {
  bool isValidEmail(String text) => EmailValidator.validate(text);

  bool isValidMobile(String text) {
    const pattern = r'^\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(text);
  }

  bool isValid(String text) => text.isNotEmpty;
}
