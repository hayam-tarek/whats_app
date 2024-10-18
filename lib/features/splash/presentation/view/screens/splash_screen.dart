import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/typewriter_animated_text.dart';
import 'package:whats_app/core/shared/widgets/whatsapp_logo.dart';
import 'package:whats_app/features/auth/presentation/views/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id = "splash-screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(context, LoginScreen.id);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Spacer(flex: 2),
                const WhatsAppLogo(),
                const Spacer(),
                AnimatedTextKit(
                  animatedTexts: [
                    typewriterAnimatedText(text: "The best chat app"),
                  ],
                  totalRepeatCount: 1,
                ),
              ],
            ),
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Developed by Hayam Tarek",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
