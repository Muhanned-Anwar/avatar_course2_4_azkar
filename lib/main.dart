import 'package:avatar_course2_4_azkar/presentation/view/main_screen.dart';
import 'package:flutter/material.dart';

import 'core/resources/manager_font_sizes.dart';
import 'core/routes.dart';
import 'presentation/view/about_screen.dart';
import 'presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: ManagerFontSizes.s20,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.mainScreen: (context) => const MainScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
      },
    );
  }
}
