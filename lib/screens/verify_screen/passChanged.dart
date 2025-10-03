import 'package:flutter/material.dart';
import 'package:medicare/core/constants/app_colors.dart';
import 'package:medicare/core/constants/app_spacing.dart';
import 'package:medicare/core/constants/app_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicare/core/widgets/custom_button.dart';

class PassChanged extends StatefulWidget {
  const PassChanged({super.key});

  @override
  State<PassChanged> createState() => _PassChangedState();
}

class _PassChangedState extends State<PassChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AppSpacing.h44,
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Image(
                    image: AssetImage('assets/images/logo_medicare.png'),
                    height: 32,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomText(
                text: "Medicare",
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
              ),

              AppSpacing.h48,
              Image(
                image: AssetImage('assets/images/successmark.png'),
                height: 152,
                width: 152,
                fit: BoxFit.cover,
              ),
              AppSpacing.h12,
              Text(
                "Password Change!",
                style: GoogleFonts.robotoFlex(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppSpacing.h10,
              Text(
                "Your password has been changed successfully.",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoFlex(
                  fontSize: 18.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                ),
              ),
              AppSpacing.h18,
              GradientButton(text: 'Back To Login', onPressed: () {}),
              AppSpacing.h24,
            ],
          ),
        ),
      ),
    );
  }
}
