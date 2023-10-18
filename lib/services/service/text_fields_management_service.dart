import 'package:flutter/material.dart';

class TextFieldsManagementService {
  void addController(Map<TextEditingController, bool> controllers,
      TextEditingController controller) {
    controllers[controller] = false;
    // return controller;
  }

  bool setValid(
    Map<TextEditingController, bool> controllers,
    TextEditingController controller,
    bool valid,
  ) {
    controllers[controller] = valid;
    return valid;
  }

  bool isAllControllersValid(Map<TextEditingController, bool> controllers) {
    print(controllers.values);
    return controllers.values.every((valid) => valid);
  }
}