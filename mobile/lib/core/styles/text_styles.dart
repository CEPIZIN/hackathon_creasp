import 'package:flutter/material.dart';
import 'package:hackathon_creasp/core/styles/colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  TextStyle get smallWhite => TextStyle(
        color: AppColors.onSecondary,
        fontSize: 18,
        fontWeight: FontWeight.w500,
  );

  TextStyle get smallGray => TextStyle(
        color: AppColors.tertiary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
  );

  TextStyle get mediumGray => TextStyle(
        color: AppColors.onPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w500,
  );

  TextStyle get smallBlue => TextStyle(
        color: AppColors.primary,
        fontSize: 16,
        fontWeight: FontWeight.w500,
  );
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}