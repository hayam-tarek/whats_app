import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/typewriter_animated_text.dart';
import 'package:whats_app/core/shared/widgets/whatsapp_logo.dart';
import 'package:whats_app/features/auth/presentation/views/screens/login_screen.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/register_form.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const WhatsAppLogo(),
            const SizedBox(height: 50),
            AnimatedTextKit(
              animatedTexts: [
                typewriterAnimatedText(text: 'Register to new account!')
              ],
              totalRepeatCount: 1,
            ),
            const SizedBox(height: 20),
            const RegisterForm(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, LoginScreen.id);
                  },
                  child: const Text(
                    'Login here',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
