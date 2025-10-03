import 'package:flutter/material.dart';
import 'package:medicare/core/constants/app_colors.dart';
import 'package:medicare/core/constants/app_spacing.dart';
import 'package:medicare/core/constants/app_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicare/core/widgets/buttons/social_login_button.dart';
import 'package:medicare/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicare/core/widgets/fields/custom_fields.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppSpacing.h16,
                // medicareText,
                CustomText(text: "Medicare",),
                const SizedBox(height: 8),
                Text(
                  "Create an account",
                  style: GoogleFonts.montserrat(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    color: Colors.blueGrey,
                    letterSpacing: 0.92,
                  ),
                ),
                AppSpacing.h40,
                CustomEmailField(
                  hintText: 'Username',
                  prefixIconData: Icons.person,
                ),
                AppSpacing.h20,
                CustomEmailField(hintText: 'abc@email.com.bd'),
                AppSpacing.h20,
                CustomPasswordField(hintText: 'Enter your password'),
                AppSpacing.h20,
                CustomPasswordField(hintText: 'Confirm password'),
                AppSpacing.h32,
                GradientButton(text: "Sign up", onPressed: () {}),
                AppSpacing.h10,

                AppSpacing.h22,
                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    SizedBox(width: 12),
                    Text(
                      'Or',
                      style: GoogleFonts.robotoFlex(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(171, 54, 47, 47),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),
                AppSpacing.h22,
                SocialLoginButton(
                  onPressed: () {},
                  leading: Image(
                    image: AssetImage('assets/images/google.png'),
                    width: 24,
                    height: 24,
                  ),
                  label: 'Log in with Google',
                ),
                AppSpacing.h12,
                SocialLoginButton(
                  onPressed: () {},
                  leading: Icon(Icons.apple, size: 28),
                  label: 'Log in with Apple',
                ),
                AppSpacing.h28,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
