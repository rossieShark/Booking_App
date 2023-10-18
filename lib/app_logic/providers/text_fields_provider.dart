
import 'package:booking/services/services_index.dart';
import 'package:flutter/material.dart';

class _ViewModelState {
  Map<TextEditingController, bool> controllers = {};
  bool isButtonTapped = false;
}

class TextFieldsProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  var _state = _ViewModelState();
  final _textFieldsManagementService = TextFieldsManagementService();
  final _textFieldsValidationService = TextFieldValidationService();

  void addController(TextEditingController controller) {
    _textFieldsManagementService.addController(_state.controllers, controller);
  }

  bool isValid(TextEditingController controller) {
    if (_state.isButtonTapped) {
      _setValid(controller, controller.text.isNotEmpty);
      return controller.text.isNotEmpty;
    }
    return true;
  }

  Future<void> setButtonTapped(bool value) async {
    _state.isButtonTapped = value;
    await Future.delayed(Duration.zero);
    notifyListeners();
  }

  Future<void> _setValid(TextEditingController controller, bool valid) async {
    _textFieldsManagementService.setValid(
        _state.controllers, controller, valid);
    // _state.controllers[controller] = valid;

    await Future.delayed(Duration.zero);
    notifyListeners();
  }

  bool isAllControllersValid() {
    return _state.controllers.isEmpty
        ? false
        : _textFieldsManagementService
            .isAllControllersValid(_state.controllers);
  }

  bool isValidEmail(TextEditingController controller) {
    final text = controller.text;
    return _state.isButtonTapped
        ? _textFieldsValidationService.isValidEmail(text)
        : true;
  }

  bool isValidMobile(TextEditingController controller) {
    final text = controller.text;
    return _state.isButtonTapped
        ? _textFieldsValidationService.isValidEmail(text)
        : true;
  }
}




