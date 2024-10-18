import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/text_form_field.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    super.key,
    this.passwordController,
    this.labelText = 'Password',
  });
  final TextEditingController? passwordController;
  final String labelText;

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      prefixIcon: const Icon(Icons.password),
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            obscurePassword = !obscurePassword;
          });
        },
        icon: obscurePassword
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
      ),
      obscureText: obscurePassword,
      keyboardType: TextInputType.visiblePassword,
      labelText: widget.labelText,
      controller: widget.passwordController,
      validator: (password) {
        if (password == null || password.isEmpty) {
          return 'Please enter your password!';
        } else if (password.length < 8) {
          return 'Password must be at least 8 characters.';
        } else {
          return null;
        }
      },
    );
  }
}
