// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Constants {
  static const Color kPrimaryColor = Colors.blue;
  static const Color kSecondaryColor = Colors.black;

  static String path(str) {
    return (kIsWeb) ? 'assets/$str' : str;
  }
}
