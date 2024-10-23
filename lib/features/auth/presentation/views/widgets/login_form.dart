import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/custom_elevated_button.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/email_text_form_field.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/password_text_form_field.dart';
import 'package:whats_app/features/home/presentation/views/screens/home_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          CustomEmailTextFormField(
            emailController: emailController,
          ),
          const SizedBox(height: 10),
          CustomPasswordTextFormField(
            passwordController: passwordController,
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            title: 'Login',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // TODO: Add login logic
                Navigator.pushReplacementNamed(context, HomeScreen.id);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
