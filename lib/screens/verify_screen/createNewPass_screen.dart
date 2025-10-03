import 'package:flutter/material.dart';
import 'package:medicare/core/constants/app_colors.dart';
import 'package:medicare/core/constants/app_spacing.dart';
import 'package:medicare/core/constants/app_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicare/core/widgets/custom_button.dart';
import 'package:medicare/core/widgets/fields/custom_fields.dart';

class CreateNewPass_screen extends StatefulWidget {
  const CreateNewPass_screen({super.key});

  @override
  State<CreateNewPass_screen> createState() => _CreateNewPass_screenState();
}

class _CreateNewPass_screenState extends State<CreateNewPass_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AppSpacing.h84,
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
                  child: const Image(
                    image: AssetImage('assets/images/logo_medicare.png'),
                    height: 48,
                    width: 60,
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
              Text(
                "Create new password.",
                style: GoogleFonts.robotoFlex(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppSpacing.h10,
              Text(
                "Your new password must be unique from those previously used.",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoFlex(
                  fontSize: 18.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                ),
              ),
              AppSpacing.h18,
              CustomPasswordField(hintText: "Enter your password"),
              AppSpacing.h12,
              CustomPasswordField(hintText: "Confirm Password"),
              AppSpacing.h24,
              GradientButton(text: 'Send', onPressed: () {}),
              AppSpacing.h24,
            ],
          ),
        ),
      ),
    );
  }
}
