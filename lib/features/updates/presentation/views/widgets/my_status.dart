import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/colors.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO add status
      },
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://picsum.photos/200/300"),
              ),
              Positioned(
                bottom: -2,
                right: -2,
                child: CircleAvatar(
                  radius: 11,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: const CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.add,
                      size: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
          const Expanded(
            child: ListTile(
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Tap to add status update",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
