import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicare/core/constants/app_spacing.dart';
import 'package:medicare/core/constants/app_text.dart';

class LogoText extends StatelessWidget {
  final String imagePath;
  final double imageHeight;
  final double imageWidth;
  final double borderRadius;
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color shadowColor;

  const LogoText({
    super.key,
    this.imagePath = 'assets/images/logo_medicare.png',
    this.imageHeight = 48,
    this.imageWidth = 60,
    this.borderRadius = 20,
    this.title = "Medicare",
    this.fontSize = 36,
    this.fontWeight = FontWeight.bold,
    this.shadowColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.h84,
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Image.asset(
              imagePath,
              height: imageHeight,
              width: imageWidth,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
        CustomText(
          text: title,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
        ),
      ],
    );
  }
}
