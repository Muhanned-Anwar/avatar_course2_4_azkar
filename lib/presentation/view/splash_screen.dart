import 'package:avatar_course2_4_azkar/core/constants.dart';
import 'package:avatar_course2_4_azkar/core/resources/manager_colors.dart';
import 'package:avatar_course2_4_azkar/core/resources/manager_fonts.dart';
import 'package:flutter/material.dart';
import '../../core/resources/manager_font_sizes.dart';
import '../../core/resources/manager_font_weight.dart';
import '../../core/resources/manager_strings.dart';
import '../../core/routes.dart';

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
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ManagerColors.secondaryColor,
              ManagerColors.brown200,
              ManagerColors.white70,
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
        ),
        child: const Text(
          ManagerStrings.appName,
          style: TextStyle(
            fontSize: ManagerFontSizes.s26,
            fontWeight: ManagerFontWeight.w600,
            fontFamily: ManagerFontFamily.appFont,
          ),
        ),
      ),
    );
  }
}
