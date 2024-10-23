import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/text_form_field.dart';

class PhoneTextFormField extends StatelessWidget {
  const PhoneTextFormField({
    super.key,
    required this.phoneController,
  });

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      prefixIcon: const Icon(Icons.phone_android),
      keyboardType: TextInputType.number,
      labelText: 'Phone number',
      controller: phoneController,
      validatorText: "Please enter you phone!",
    );
  }
}
