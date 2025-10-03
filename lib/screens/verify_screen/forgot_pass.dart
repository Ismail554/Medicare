import 'package:flutter/material.dart';
import 'package:medicare/core/constants/app_colors.dart';
import 'package:medicare/core/constants/app_spacing.dart';
import 'package:medicare/core/constants/app_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicare/core/widgets/custom_button.dart';
import 'package:medicare/core/widgets/fields/custom_fields.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
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
                "Forgot Password?",
                style: GoogleFonts.robotoFlex(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppSpacing.h10,
              Text(
                "Don't worry! Please enter the email address linked with your account.",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoFlex(
                  fontSize: 18.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                ),
              ),
              AppSpacing.h18,
              CustomEmailField(hintText: 'abc@email.com'),
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
