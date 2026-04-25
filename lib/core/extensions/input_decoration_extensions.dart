import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../flutx_core/screen/app_sizes.dart';

extension InputDecorationExtensions on BuildContext {
  InputDecoration get primaryInputDecoration => InputDecoration(
    //filled: true,
    suffixIconColor: AppColors.iconColor,
    contentPadding: AppSizes.paddingMd.all,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: Color(0xFF000000)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: Color(0xFF000000)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: Color(0xFF000000)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: Color(0xFF000000), width: 1.5),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: AppColors.red, width: 1.5),
    ),
    hintStyle: TextStyle(
      color: AppColors.hintText,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    labelStyle: TextStyle(
      color: AppColors.hintText,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    errorStyle: TextStyle(
      color: AppColors.red,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
}
