import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/light_theme_data.dart';
import 'package:whats_app/features/auth/presentation/views/screens/login_screen.dart';
import 'package:whats_app/features/auth/presentation/views/screens/register_screen.dart';
import 'package:whats_app/features/chat/presentation/views/screens/chats_screen.dart';
import 'package:whats_app/features/home/presentation/views/screens/home_screen.dart';
import 'package:whats_app/features/splash/presentation/view/screens/splash_screen.dart';

import 'features/calls/presentation/views/screens/calls_screen.dart';
import 'features/profile/presentation/views/screen/profile_screen.dart';
import 'features/updates/presentation/views/screens/updates_screen.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whats App',
      debugShowCheckedModeBanner: false,
      theme: LightThemeData.getThemeData(),
      // theme: DarkThemeData.getThemeData(),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        ChatsScreen.id: (context) => const ChatsScreen(),
        UpdatesScreen.id: (context) => const UpdatesScreen(),
        CallsScreen.id: (context) => const CallsScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
