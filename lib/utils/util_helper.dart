import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color bgColor = Color(0xFF101010);
  static const Color secondaryColor = Color(0xFF202023);
  static const Color mGreyColor = Color(0xFF9e9e9e);
}

TextStyle mTextStyle16({
  Color mColor = Colors.black,
  FontWeight mFontWeight = FontWeight.bold,
}) {
  return GoogleFonts.robotoFlex(
    fontSize: 16,
    color: mColor,
    fontWeight: mFontWeight,
  );
}

TextStyle mTextStyle12({
  Color mColor = Colors.black,
  FontWeight mFontWeight = FontWeight.bold,
}) {
  return GoogleFonts.robotoFlex(
    fontSize: 12,
    color: mColor,
    fontWeight: mFontWeight,
  );
}

TextStyle mTextStyle14({
  Color mColor = Colors.black,
  FontWeight mFontWeight = FontWeight.bold,
}) {
  return GoogleFonts.robotoFlex(
    fontSize: 14,
    color: mColor,
    fontWeight: mFontWeight,
  );
}
