// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:oreo/controllers/common/theme_controller.dart';
// import 'package:provider/provider.dart';
// import 'app_colors.dart';

// class FontManager {
//   // Font Families
//   static const String poppins = "Poppins";
//   static const String inter = "Inter";

//   // Font Sizes
//   static const double size10 = 10.0;
//   static const double size12 = 12.0;
//   static const double size14 = 14.0;
//   static const double size16 = 16.0;
//   static const double size18 = 18.0;
//   static const double size20 = 20.0;
//   static const double size24 = 24.0;
//   static const double size28 = 28.0;
//   static const double size32 = 32.0;

//   // Font Weights
//   static const FontWeight w300 = FontWeight.w300; // Light
//   static const FontWeight w400 = FontWeight.w400; // Regular
//   static const FontWeight w500 = FontWeight.w500; // Medium
//   static const FontWeight w600 = FontWeight.w600; // SemiBold
//   static const FontWeight w700 = FontWeight.w700; // Bold
//   static const FontWeight w800 = FontWeight.w800; // ExtraBold

//   // Helper function to check if dark mode is enabled
//   static bool isDarkMode(BuildContext context) {
//     final themeController = Provider.of<ThemeController>(context, listen: false);
//     return themeController.themeMode == ThemeMode.dark;
//   }

//   // Function to get text color based on ThemeMode
//   static Color getTextColor(BuildContext context, {bool isWhite = false}) {
//     if (isWhite) {
//       return AppColors.lightBackgroundPrimary; // সবসময় White
//     }

//     if (isDarkMode(context)) {
//       return AppColors.lightBackgroundPrimary; // Dark Mode → White Text
//     } else {
//       return AppColors.darkBackgroundPrimary;  // Light Mode → Black Text
//     }
//   }

//   // Inter Text Styles with isWhite option
//   static TextStyle headlineInter(BuildContext context, {bool isWhite = false}) => TextStyle(
//         fontFamily: inter,
//         fontSize: size24.sp,
//         fontWeight: w700,
//         color: getTextColor(context, isWhite: isWhite),
//       );

//   static TextStyle headlineLargeInter(BuildContext context, {bool isWhite = false}) => TextStyle(
//         fontFamily: inter,
//         fontSize: size32.sp,
//         fontWeight: w800,
//         color: getTextColor(context, isWhite: isWhite),
//       );

//   static TextStyle subheadingInter(BuildContext context, {bool isWhite = false}) => TextStyle(
//         fontFamily: inter,
//         fontSize: size18.sp,
//         fontWeight: w600,
//         color: getTextColor(context, isWhite: isWhite),
//       );

//   static TextStyle bodyInter(BuildContext context, {bool isWhite = false}) => TextStyle(
//         fontFamily: inter,
//         fontSize: size14.sp,
//         fontWeight: w400,
//         color: getTextColor(context, isWhite: isWhite),
//       );

//   static TextStyle bodyMediumInter(BuildContext context, {bool isWhite = false}) => TextStyle(
//         fontFamily: inter,
//         fontSize: size16.sp,
//         fontWeight: w500,
//         color: getTextColor(context, isWhite: isWhite),
//       );

//   static TextStyle captionInter(BuildContext context, {bool isWhite = false}) => TextStyle(
//         fontFamily: inter,
//         fontSize: size12.sp,
//         fontWeight: w400,
//         color: getTextColor(context, isWhite: isWhite),
//       );

//   static TextStyle smallInter(BuildContext context, {bool isWhite = false}) => TextStyle(
//         fontFamily: inter,
//         fontSize: size14.sp,
//         fontWeight: w400,
//         color: getTextColor(context, isWhite: isWhite),
//       );

//   // Special Text Styles
//   static TextStyle appBarText(BuildContext context, {bool isWhite = false, String fontFamily = inter}) => TextStyle(
//         fontFamily: fontFamily,
//         fontSize: size16.sp,
//         fontWeight: w500,
//         color: getTextColor(context, isWhite: isWhite),
//       );

//   static TextStyle errorText(BuildContext context) => TextStyle(
//         fontFamily: inter,
//         fontSize: size12.sp,
//         fontWeight: w400,
//         color: AppColors.redError,
//       );

//   static TextStyle hintText(BuildContext context) => TextStyle(
//         fontFamily: inter,
//         fontSize: size12.sp,
//         fontWeight: w400,
//         color: isDarkMode(context) ? AppColors.darkText.withOpacity(0.7) : AppColors.grayMedium,
//       );

//   static TextStyle buttonText(BuildContext context, {bool isWhite = false, String fontFamily = inter}) => TextStyle(
//         fontFamily: fontFamily,
//         fontSize: size16.sp,
//         fontWeight: w600,
//         color: getTextColor(context, isWhite: isWhite),
//       );
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class FontManager {
  // Font Families
  static const String poppins = "Poppins";
  static const String inter = "Inter";

  // Font Sizes
  static const double size10 = 10.0;
  static const double size12 = 12.0;
  static const double size14 = 14.0;
  static const double size16 = 16.0;
  static const double size18 = 18.0;
  static const double size20 = 20.0;
  static const double size24 = 24.0;
  static const double size28 = 28.0;
  static const double size32 = 32.0;

  // Font Weights
  static const FontWeight w300 = FontWeight.w300;
  static const FontWeight w400 = FontWeight.w400;
  static const FontWeight w500 = FontWeight.w500;
  static const FontWeight w600 = FontWeight.w600;
  static const FontWeight w700 = FontWeight.w700;
  static const FontWeight w800 = FontWeight.w800;

  // Helper to check dark mode
  static bool isDarkMode(BuildContext context) {
    return true;
  }

  // Get text color based on ThemeMode & options
  static Color getTextColor(
    BuildContext context, {
    bool isWhiteLight = false, // Light mode-এ white text
    bool isWhiteDark = false, // Dark mode-এ white text
  }) {
    if (isDarkMode(context)) {
      return isWhiteDark
          ? AppColors.lightBackgroundPrimary
          : AppColors.lightBackgroundPrimary;
    } else {
      return isWhiteLight
          ? AppColors.lightBackgroundPrimary
          : AppColors.darkBackgroundPrimary;
    }
  }

  // Inter Text Styles
  static TextStyle headlineInter(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
  }) => TextStyle(
    fontFamily: inter,
    fontSize: size24.sp,
    fontWeight: w700,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );

  static TextStyle headlineLargeInter(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
  }) => TextStyle(
    fontFamily: inter,
    fontSize: size32.sp,
    fontWeight: w800,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );

  static TextStyle subheadingInter(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
  }) => TextStyle(
    fontFamily: inter,
    fontSize: size18.sp,
    fontWeight: w600,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );

  static TextStyle bodyInter(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
  }) => TextStyle(
    fontFamily: inter,
    fontSize: size14.sp,
    fontWeight: w400,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );

  static TextStyle bodyMediumInter(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
  }) => TextStyle(
    fontFamily: inter,
    fontSize: size16.sp,
    fontWeight: w500,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );

  static TextStyle captionInter(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
  }) => TextStyle(
    fontFamily: inter,
    fontSize: size12.sp,
    fontWeight: w400,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );

  static TextStyle smallInter(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
  }) => TextStyle(
    fontFamily: inter,
    fontSize: size14.sp,
    fontWeight: w400,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );

  // Special Text Styles
  static TextStyle appBarText(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
    String fontFamily = inter,
  }) => TextStyle(
    fontFamily: fontFamily,
    fontSize: size16.sp,
    fontWeight: w500,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );

  static TextStyle errorText(BuildContext context) => TextStyle(
    fontFamily: inter,
    fontSize: size12.sp,
    fontWeight: w400,
    color: AppColors.redError,
  );

  static TextStyle hintText(BuildContext context) => TextStyle(
    fontFamily: inter,
    fontSize: size12.sp,
    fontWeight: w400,
    color: isDarkMode(context)
        ? AppColors.darkText.withOpacity(0.7)
        : AppColors.grayMedium,
  );

  static TextStyle buttonText(
    BuildContext context, {
    bool isWhiteLight = false,
    bool isWhiteDark = false,
    String fontFamily = inter,
  }) => TextStyle(
    fontFamily: fontFamily,
    fontSize: size16.sp,
    fontWeight: w600,
    color: getTextColor(
      context,
      isWhiteLight: isWhiteLight,
      isWhiteDark: isWhiteDark,
    ),
  );
}
