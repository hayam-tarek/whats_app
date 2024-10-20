import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

class CustomCircleNavBar extends StatelessWidget {
  const CustomCircleNavBar({
    super.key,
    required this.index,
    this.onTap,
  });

  final int index;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return CircleNavBar(
      activeIndex: index,
      onTap: onTap,
      activeIcons: const [
        Icon(Icons.chat),
        Icon(Icons.tips_and_updates),
        Icon(Icons.groups),
        Icon(Icons.call),
      ],
      inactiveIcons: const [
        Column(
          children: [
            Icon(Icons.chat_outlined),
            Text("Chats"),
          ],
        ),
        Column(
          children: [
            Icon(Icons.tips_and_updates_outlined),
            Text("Updates"),
          ],
        ),
        Column(
          children: [
            Icon(Icons.groups_outlined),
            Text("Groups"),
          ],
        ),
        Column(
          children: [
            Icon(Icons.call_outlined),
            Text("Calls"),
          ],
        ),
      ],
      color: Theme.of(context).scaffoldBackgroundColor,
      shadowColor: Theme.of(context).primaryColor,
      circleColor: Theme.of(context).scaffoldBackgroundColor,
      circleShadowColor: Theme.of(context).primaryColor,
      elevation: 10,
      height: 60,
      circleWidth: 60,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
      cornerRadius: const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomRight: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      ),
    );
  }
}
