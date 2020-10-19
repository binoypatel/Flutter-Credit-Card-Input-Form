import 'package:flutter/material.dart';

class CardNumberProvider with ChangeNotifier {
  String _cardNumber;
  String _error;

  CardNumberProvider(initValue) {
    _cardNumber = addSpaceToCardNumber(initValue);
  }

  void setNumber(String newValue) {
    _cardNumber = addSpaceToCardNumber(newValue);

    notifyListeners();
  }

  void setError(String error) {
    _error = error;
    notifyListeners();
  }

  String addSpaceToCardNumber(String newValue) {
    if (newValue.isNotEmpty && newValue[newValue.length - 1] == ' ') {
      return newValue.substring(0, newValue.length - 1);
    } else {
      newValue = newValue.replaceAll(" ", "");
      String cardNumber = "";

      for (int i = 1; i <= newValue.length; i++) {
        cardNumber = cardNumber + newValue[i - 1];
        if (i % 4 == 0 && i != newValue.length) {
          cardNumber = cardNumber + ' ';
        }
      }
      return cardNumber;
    }
  }

  String get cardNumber => _cardNumber;
  String get error => _error;
}
