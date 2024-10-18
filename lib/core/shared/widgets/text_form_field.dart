import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_spacing.dart';
import 'package:whats_app/core/theme/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.controller,
    this.validator,
    this.validatorText,
    this.keyboardType,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.initialValue,
    this.onSaved,
    this.minLines = 1,
    this.maxLines = 1,
    this.isEnabled = true,
  });
  final String labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? validatorText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? initialValue;
  final int? minLines;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final bool? isEnabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled,
      minLines: minLines,
      maxLines: maxLines,
      onSaved: onSaved,
      initialValue: initialValue,
      cursorErrorColor: Colors.red,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      controller: controller,
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return validatorText;
            }
            return null;
          },
      decoration: InputDecoration(
        hintText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 16,
        ),
        enabledBorder: customOutlineInputBorder(
          color: Colors.grey,
        ),
        errorBorder: customOutlineInputBorder(
          color: Colors.red,
        ),
        focusedBorder: customFocusedOutlineInputBorder(
          color: AppColors.primaryColor,
        ),
        focusedErrorBorder: customFocusedOutlineInputBorder(
          color: Colors.red,
        ),
      ),
    );
  }

  OutlineInputBorder customFocusedOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: color),
    );
  }

  OutlineInputBorder customOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(
        AssetSpacing.borderRadius,
      )),
      borderSide: BorderSide(color: color),
    );
  }
}
