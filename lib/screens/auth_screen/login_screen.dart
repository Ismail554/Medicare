import 'package:flutter/material.dart';
import 'package:medicare/core/constants/app_colors.dart';
import 'package:medicare/core/constants/app_spacing.dart';
import 'package:medicare/core/constants/app_strings.dart';
import 'package:medicare/core/constants/app_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicare/core/widgets/custom_button.dart';
import 'package:medicare/core/widgets/buttons/social_login_button.dart';
import 'package:medicare/core/widgets/fields/custom_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSwitched = false;

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
                  "Welcome back",
                  style: GoogleFonts.robotoFlex(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    letterSpacing: 0.92,
                  ),
                ),
                AppSpacing.h40,
                CustomEmailField(hintText: 'abc@email.com.bd'),
                AppSpacing.h20,
                CustomPasswordField(hintText: 'Enter your password'),
                AppSpacing.h32,
                GradientButton(text: "Log in", onPressed: () {}),
                AppSpacing.h10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Remember Me section
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Centers the Row contents
                      children: [
                        // Modernized Switch
                        Transform.scale(
                          scale:
                              1, // Increase switch size for a more noticeable, modern look
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeColor: AppColors.primaryBlue,
                            activeTrackColor:
                                AppColors.white, // Active track color
                            inactiveThumbColor: AppColors.primaryBlue,
                            inactiveTrackColor: AppColors.white,

                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                        SizedBox(width: 4), // Space between switch and text
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            fontSize: 16, // Adjust the font size
                            fontWeight: FontWeight
                                .w500, // Use medium weight for a modern look
                            color: Colors.black, // Text color
                          ),
                        ),
                      ],
                    ),
                    // Forgot Password section
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      ),
                    ),
                  ],
                ),
                AppSpacing.h32,
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
                AppSpacing.h32,
                SocialLoginButton(
                  onPressed: () {},
                  leading: Image(
                    image: AssetImage('assets/images/google.png'),
                    width: 24,
                    height: 24,
                  ),
                  label: 'Log in with Google',
                ),
                AppSpacing.h20,
                SocialLoginButton(
                  onPressed: () {},
                  leading: Icon(Icons.apple, size: 28),
                  label: 'Log in with Apple',
                ),
                AppSpacing.h28,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New to Medicare? ',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1B53AE),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
