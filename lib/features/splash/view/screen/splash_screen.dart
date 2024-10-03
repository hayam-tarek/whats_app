import 'package:flutter/material.dart';
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
        if (mounted) {
          // Navigator.pushReplacementNamed(context, WelcomeScreen.id);
        }
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
            flex: 3,
            child: Column(
              children: [
                Spacer(flex: 2),
                WhatsAppLogo(),
                Spacer(),
                Text(
                  "The best chat app",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
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
