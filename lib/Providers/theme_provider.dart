import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isLight = true;

  bool get isLight => _isLight;

  ThemeMode get currentTheme =>
  _isLight ? ThemeMode.light : ThemeMode.dark;



  void setTheme(bool isLight) {
    if (_isLight == isLight) return;
    _isLight = isLight;
    notifyListeners();
  }
}
