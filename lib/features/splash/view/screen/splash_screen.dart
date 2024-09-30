import 'package:flutter/material.dart';
import 'package:whats_app/features/splash/view/screen/welcome_screen.dart';
import 'package:whats_app/features/splash/view/widgets/whatsapp_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id = "splashScreen";

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
        Navigator.pushReplacementNamed(context, WelcomeScreen.id);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Expanded(
            flex: 2,
            child: WhatsAppLogo(),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  "The best chat app",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
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
