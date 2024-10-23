import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/custom_elevated_button.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/email_text_form_field.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/name_text_form_field.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/password_text_form_field.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/phon_text_form_field.dart';
import 'package:whats_app/features/home/presentation/views/screens/home_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          NameTextFormField(
            nameController: nameController,
          ),
          const SizedBox(height: 10),
          PhoneTextFormField(
            phoneController: phoneController,
          ),
          const SizedBox(height: 10),
          CustomEmailTextFormField(
            emailController: emailController,
          ),
          const SizedBox(height: 10),
          CustomPasswordTextFormField(
            passwordController: passwordController,
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            title: 'Register',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // TODO: Add register logic
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
