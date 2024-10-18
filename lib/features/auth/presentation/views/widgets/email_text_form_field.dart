import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/text_form_field.dart';

class CustomEmailTextFormField extends StatelessWidget {
  const CustomEmailTextFormField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        prefixIcon: const Icon(Icons.email),
        keyboardType: TextInputType.emailAddress,
        labelText: 'Email',
        controller: emailController,
        validator: (email) {
          if (email == null || email.isEmpty) {
            return 'Please enter your email!';
          } else if (!email.contains('@')) {
            return 'Please enter a valid email!';
          }
          return null;
        });
  }
}
