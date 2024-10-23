import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_spacing.dart';
import 'package:whats_app/features/auth/presentation/views/widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String id = 'login-screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AssetSpacing.paddingSpace,
          ),
          child: LoginBody(),
        ),
      ),
    );
  }
}
