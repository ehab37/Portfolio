import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle get heading1 => GoogleFonts.poppins(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle get heading2 => GoogleFonts.poppins(
    // fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle get heading3 => GoogleFonts.poppins(
    // fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle get bodyLarge => GoogleFonts.poppins(
    // fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  static TextStyle get bodyMedium => GoogleFonts.poppins(
    // fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  static TextStyle get buttonText => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
