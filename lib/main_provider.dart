import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  bool _isFocused = false;

  void setFocus(bool value) {
    _isFocused = value;
  }

  bool get isFocused => _isFocused;
}
