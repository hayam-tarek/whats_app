import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/typewriter_animated_text.dart';
import 'package:whats_app/core/shared/widgets/whatsapp_logo.dart';
import 'package:whats_app/features/auth/presentation/views/screens/register_screen.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const WhatsAppLogo(),
        const SizedBox(height: 50),
        AnimatedTextKit(
          animatedTexts: [
            typewriterAnimatedText(text: 'Login to you account!')
          ],
          totalRepeatCount: 1,
        ),
        const SizedBox(height: 10),
        const LoginForm(),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?'),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, RegisterScreen.id);
              },
              child: const Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
