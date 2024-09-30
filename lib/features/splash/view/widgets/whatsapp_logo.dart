import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_images.dart';
import 'package:whats_app/core/theme/colors.dart';

class WhatsAppLogo extends StatelessWidget {
  const WhatsAppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetImages.logo,
          scale: 4,
        ),
        const Text(
          "WhatsApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.kPrimaryColor,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
