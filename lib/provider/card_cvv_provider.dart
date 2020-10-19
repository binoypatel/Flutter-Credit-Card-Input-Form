import 'package:flutter/material.dart';

class CardCVVProvider with ChangeNotifier {
  String _cardCVV;
  String _error;

  CardCVVProvider(initValue) {
    _cardCVV = initValue;
  }

  void setCVV(String cvv) {
    _cardCVV = cvv;
    notifyListeners();
  }

  void setError(String error) {
    _error = error;
    notifyListeners();
  }

  String get cardCVV => _cardCVV;
  String get error => _error;
}
