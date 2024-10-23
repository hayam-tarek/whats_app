import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/colors.dart';

class PicImage extends StatelessWidget {
  const PicImage({
    super.key,
    required this.defaultImageUrl,
  });
  final String? defaultImageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 100,
          backgroundColor: Colors.grey[300],
          backgroundImage: defaultImageUrl != null
              ? NetworkImage(
                  defaultImageUrl!,
                )
              : null,
          child: defaultImageUrl == null
              ? Icon(
                  Icons.person,
                  size: 150,
                  color: Theme.of(context).scaffoldBackgroundColor,
                )
              : null,
        ),
        Positioned(
          bottom: -2,
          right: -2,
          child: CircleAvatar(
            radius: 26,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.primaryColor,
              child: IconButton(
                onPressed: () {
                  //TODO pic image
                },
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
