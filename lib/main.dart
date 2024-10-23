import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/light_theme_data.dart';
import 'package:whats_app/features/splash/presentation/view/screens/splash_screen.dart';
import 'package:whats_app/features/splash/presentation/view/screens/welcome_screen.dart';

import 'features/updates/presentation/views/screens/updates_screen.dart';

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
      theme: LightThemeData.getThemeData(),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        UpdatesScreen.id: (context) => const UpdatesScreen(),
      },
      initialRoute: UpdatesScreen.id,
    );
  }
}
