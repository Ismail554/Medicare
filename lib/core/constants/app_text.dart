import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicare/core/constants/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double? letterSpacing;
  final double? height;
  final Color color;
  final TextAlign textAlign;
  final String? fontFamily;
  final TextOverflow? overflow;
  final int? maxLines;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.letterSpacing,
    this.height,
    this.color = Colors.black,
    this.textAlign = TextAlign.start,
    this.fontFamily, // allow custom family
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: GoogleFonts.robotoFlex(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        letterSpacing: letterSpacing ?? 0.2,
        height: height,
        color: AppColors.primaryBlue2,
      ),
    );
  }
}
