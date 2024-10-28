import 'package:flutter/material.dart';
import 'package:whats_app/features/chat/data/models/sender_model.dart';

AppBar chatAppBar({required SenderModel senderModel}) {
  return AppBar(
    titleSpacing: 0,
    title: ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
          'https://picsum.photos/200/300',
        ),
      ),
      title: Text(
        senderModel.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text('Last seen today at 12:30'),
    ),
    actions: [
      IconButton(
        onPressed: () {
          //TODO video call
        },
        icon: const Icon(Icons.videocam),
      ),
      IconButton(
        onPressed: () {
          //TODO voice call
        },
        icon: const Icon(Icons.call),
      ),
      PopupMenuButton(
        itemBuilder: (context) {
          return [
            const PopupMenuItem(
              child: Text('View contact'),
            ),
            const PopupMenuItem(
              child: Text('Media, links and docs'),
            ),
            const PopupMenuItem(
              child: Text('Search'),
            ),
            const PopupMenuItem(
              child: Text('Mute notifications'),
            ),
            const PopupMenuItem(
              child: Text('Wallpaper'),
            ),
            const PopupMenuItem(
              child: Text('More'),
            ),
          ];
        },
      )
    ],
  );
}
