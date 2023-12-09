import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  static Color get primary => const Color(0xFF1B2267);
  static Color get onPrimary => const Color(0xFF3C3B3B);
  static Color get onSecondary => const Color(0xFFFDFDFD);
  static Color get tertiary => const Color(0xFF8A929A);
}
