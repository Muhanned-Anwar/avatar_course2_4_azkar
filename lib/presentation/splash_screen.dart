import 'package:avatar_course2_4_azkar/core/constants.dart';
import 'package:flutter/material.dart';
import '../core/resources/manager_font_sizes.dart';
import '../core/resources/manager_font_weight.dart';
import '../core/resources/manager_strings.dart';
import '../core/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: Constants.splashTime,
      ),
      () {
        Navigator.pushReplacementNamed(context, Routes.mainScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          ManagerStrings.appName,
          style: TextStyle(
            fontSize: ManagerFontSizes.s24,
            fontWeight: ManagerFontWeight.w600,
          ),
        ),
      ),
    );
  }
}
