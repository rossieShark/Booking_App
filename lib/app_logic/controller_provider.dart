import 'package:flutter/material.dart';

class TextFieldControllerProvider extends ChangeNotifier {
  final TextFieldControllerManager manager = TextFieldControllerManager();
  bool isButtonTapped = false;
  void addController(TextEditingController controller) {
    manager.addController(controller);
    notifyListeners();
  }

  void removeAllControllers() {
    manager.removeAllcontrollers();
    notifyListeners();
  }

  bool areAllFieldsFilled() {
    return manager.areAllFieldsFilled();
  }

  bool isEmpty() {
    return manager.isEmpty();
  }

  void setButtonTapped(bool value) {
    isButtonTapped = value;
    notifyListeners();
  }
}

class TextFieldControllerManager {
  final List<TextEditingController> controllers = [];

  void addController(TextEditingController controller) {
    controllers.add(controller);
    print('controllers length: ${controllers.length}');
  }

  void removeAllcontrollers() {
    controllers.clear();
  }

  bool areAllFieldsFilled() {
    return controllers.every((controller) => controller.text.isNotEmpty);
  }

  bool isEmpty() {
    return controllers.isEmpty;
  }
}
