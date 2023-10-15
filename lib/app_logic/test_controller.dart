import 'package:flutter/material.dart';

class TextFieldControllerProvider2 with ChangeNotifier {
  final Map<TextEditingController, bool> _controllers = {};

  bool _isButtonTapped = false;
  bool _isValid = false;

  TextEditingController addController(TextEditingController controller) {
    _controllers[controller] = false;
    return controller;
  }

  bool isValid(TextEditingController controller) {
    if (_isButtonTapped) {
      setValid(controller, controller.text.isNotEmpty);
      return controller.text.isNotEmpty;
    }
    return true; // No validation needed if the button is not tapped.
  }

  void setButtonTapped(bool value) {
    _isButtonTapped = value;
    notifyListeners();
  }

  void setValid(TextEditingController controller, bool valid) {
    _controllers[controller] = valid;
    notifyListeners();
  }

  bool isAllControllersValid() {
    //  _isValid = true;
    for (bool valid in _controllers.values) {
      _isValid = valid;
    }
    if (_isValid) {
      return true;
    }
    return false;
  }
}
