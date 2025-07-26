import 'package:flutter/material.dart';
import 'package:iti_project/res/app_colors.dart';


class AppTextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 18,
    color: AppColors.textDark,
  );

  static const TextStyle category = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textDark,
  );

  static const TextStyle productName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static const TextStyle productDesc = TextStyle(
    fontSize: 13,
    color: AppColors.textDark,
  );
  static const TextStyle productPrice = TextStyle(
    fontSize: 15,
    color: AppColors.textDark,
  );
}
