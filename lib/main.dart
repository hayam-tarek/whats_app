import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app/core/theme/colors.dart';
import 'package:whats_app/features/splash/view/screen/splash_screen.dart';
import 'package:whats_app/features/splash/view/screen/welcome_screen.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whats App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.kPrimaryColor),
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
      ),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
