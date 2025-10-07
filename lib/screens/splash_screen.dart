import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicare/core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart'; // You can use Google Fonts if you want, but here we use RobotoFlex directly
import 'package:medicare/core/constants/app_spacing.dart';
import 'package:medicare/core/constants/app_text.dart';
import 'package:medicare/screens/chatBot_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatBotScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Container(
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
                height: 48,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            AppSpacing.h20,
            CustomText(text: "Medicare", fontSize: 36),

            // Text with updated properties
            // Text(
            //   "Medicare",
            //   style: TextStyle(
            //     fontFamily:
            //         'RobotoFlex', // Ensure you've added RobotoFlex to your project
            //     fontWeight: FontWeight.w600, // SemiBold weight
            //     fontSize: 46.0,
            //     height: 1.0,
            //     letterSpacing: 0.92,
            //     color: Color(0xFF339BF0),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
