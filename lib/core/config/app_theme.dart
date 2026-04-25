import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: AppColors.primaryWhite,
    // primaryColor: AppColors.primaryWhite,
    colorScheme: ColorScheme.dark(primary: AppColors.primaryWhite),

    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme).apply(
      // bodyColor: AppColors.primaryBlack,
      // displayColor: AppColors.primaryBlack,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryWhite,
      titleTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
      centerTitle: false,
    ),
  );
}
