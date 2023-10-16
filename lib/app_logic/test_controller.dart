import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFieldControllerProvider2 with ChangeNotifier {
  final Map<TextEditingController, bool> _controllers = {};

  bool _isButtonTapped = false;
  bool _isValid = false;
  bool _isValidEmail = false;

  TextEditingController addController(TextEditingController controller) {
    _controllers[controller] = false;
    return controller;
  }

  bool isValid(TextEditingController controller) {
    if (_isButtonTapped) {
      setValid(controller, controller.text.isNotEmpty);
      //notifyListeners();
      return controller.text.isNotEmpty;
    }
    return true;
    // No validation needed if the button is not tapped.
  }
  // bool isValid(TextEditingController controller) {
  //   final text = controller.text;
  //   final isValid = _isButtonTapped && text.isNotEmpty;
  //   setValid(controller, isValid);
  //   return isValid;
  // }

  Future<void> setButtonTapped(bool value) async {
    _isButtonTapped = value;

    // Defer the notification until the next event loop cycle
    await Future.delayed(Duration.zero);
    notifyListeners();
  }

  Future<void> setValid(TextEditingController controller, bool valid) async {
    _controllers[controller] = valid;

    // Defer the notification until the next event loop cycle
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
    final pattern = r'^\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}$';
    final regExp = RegExp(pattern);
    return _isButtonTapped ? regExp.hasMatch(text) : true;
  }
}
