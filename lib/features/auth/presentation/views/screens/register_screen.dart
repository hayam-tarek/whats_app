import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_spacing.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const String id = 'register-screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AssetSpacing.paddingSpace,
          ),
          child: RegisterBody(),
        ),
      ),
    );
  }
}
