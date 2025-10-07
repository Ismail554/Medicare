import 'package:flutter/material.dart';
import 'package:medicare/screens/Home/homepage.dart';
import 'package:medicare/screens/Ostad/form_validation.dart';
import 'package:medicare/screens/auth_screen/login_screen.dart';
import 'package:medicare/screens/auth_screen/test.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicare/screens/chatBot_screen.dart';
import 'package:medicare/screens/splash_screen.dart';
import 'package:medicare/screens/verify_screen/createNewPass_screen.dart';
import 'package:medicare/screens/verify_screen/forgot_pass.dart';
import 'package:medicare/screens/verify_screen/passChanged.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(debugShowCheckedModeBanner: false, home: MyPage());
      },
    );
  }
}
