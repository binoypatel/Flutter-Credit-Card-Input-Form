import 'package:flutter/material.dart';

class CardNameProvider with ChangeNotifier {
  String _cardName;
  String _error;

  CardNameProvider(initValue) {
    _cardName = initValue;
  }

  void setName(String name) {
    _cardName = name;
    notifyListeners();
  }

  void setError(String error) {
    _error = error;
    notifyListeners();
  }

  String get cardName => _cardName;
  String get error => _error;
}
