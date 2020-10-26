import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  static bool _isLight = true;
  ThemeMode currentTheme() {
    return _isLight ? ThemeMode.light : ThemeMode.dark;
  }

  void switchTheme() {
    _isLight = !_isLight;
    notifyListeners();
  }
}
