import 'package:flutter/material.dart';

class AppLanguage extends ChangeNotifier {
  bool _isRussian = true;

  bool get isRussian => _isRussian;

  void setRussian() {
    _isRussian = true;
    notifyListeners();
  }

  void setEnglish() {
    _isRussian = false;
    notifyListeners();
  }
}