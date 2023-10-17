import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFieldsProvider with ChangeNotifier {
  final Map<TextEditingController, bool> _controllers = {};
  bool _isButtonTapped = false;

  TextEditingController addController(TextEditingController controller) {
    _controllers[controller] = false;
    return controller;
  }

  bool isValid(TextEditingController controller) {
    if (_isButtonTapped) {
      setValid(controller, controller.text.isNotEmpty);
      return controller.text.isNotEmpty;
    }
    return true;
  }

  Future<void> setButtonTapped(bool value) async {
    _isButtonTapped = value;
    await Future.delayed(Duration.zero);
    notifyListeners();
  }

  Future<void> setValid(TextEditingController controller, bool valid) async {
    _controllers[controller] = valid;
    await Future.delayed(Duration.zero);
    notifyListeners();
  }

  bool isAllControllersValid() {
    if (_controllers.isEmpty) {
      return false;
    }
    return _controllers.values.every((valid) => valid);
  }

  bool isValidEmail(TextEditingController controller) {
    final text = controller.text;
    return _isButtonTapped ? EmailValidator.validate(text) : true;
  }

  bool isValidMobile(TextEditingController controller) {
    final text = controller.text;
    const pattern = r'^\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}$';
    final regExp = RegExp(pattern);
    return _isButtonTapped ? regExp.hasMatch(text) : true;
  }
}
