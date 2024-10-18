import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_spacing.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AssetSpacing.borderRadius,
            ),
          ),
        ),
        minimumSize: WidgetStateProperty.all<Size>(
            Size(MediaQuery.of(context).size.width, 45)),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
