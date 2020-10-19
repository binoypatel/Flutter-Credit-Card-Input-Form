import 'package:flutter/material.dart';

class CardValidProvider with ChangeNotifier {
  String _cardValid;
  String _error;

  CardValidProvider(initValue) {
    _cardValid = initValue;
  }

  void setValid(String newValue) {
    if (newValue.length == 3) {
      if (newValue.contains("/")) {
        _cardValid = newValue.substring(0, 2);
      } else {
        _cardValid = newValue.substring(0, 2) + "/" + newValue.substring(2);
      }
    } else {
      _cardValid = newValue;
    }
    notifyListeners();
  }

  void setError(String error) {
    _error = error;
    notifyListeners();
  }

  String get cardValid => _cardValid;
  String get error => _error;
}
