import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLight;

  ThemeNotifier({required this.isLight});

  void changeTheme({required bool newBool}) {
    isLight = newBool;
    notifyListeners();
  }
}
