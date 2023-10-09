import 'package:booking/models/tourist_model.dart';

import 'package:flutter/material.dart';

class TouristProvider extends ChangeNotifier {
  final List<Tourist> _tourists = [Tourist(index: 1)];

  List<Tourist> get tourists => _tourists;
  final _maxQuantityOfTourists = 5;
  void addToTourists(int index) {
    if (_tourists.length < _maxQuantityOfTourists) {
      _tourists.add(Tourist(index: index));
      notifyListeners();
    }
  }
}
