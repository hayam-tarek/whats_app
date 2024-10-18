import 'package:flutter/material.dart';
import 'package:whats_app/core/shared/widgets/text_form_field.dart';

class NameTextFormField extends StatelessWidget {
  const NameTextFormField({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      prefixIcon: const Icon(Icons.person),
      keyboardType: TextInputType.name,
      labelText: 'Name',
      controller: nameController,
      validatorText: "Please enter you name!",
    );
  }
}
