import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whats_app/features/chat/data/models/sender_model.dart';
import 'package:whats_app/features/chat/presentation/views/widgets/chats_screen_body.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});
  static const String id = 'chat-screen';

  @override
  Widget build(BuildContext context) {
    List<SenderModel> messages = [
      SenderModel(
        name: 'Hayam Tarek',
        image: null,
        messageText: 'This message was hidden',
        messageTime: '${DateTime.now().hour}:${DateTime.now().minute}',
        messageStatus: false,
        messageCount: Random().nextInt(15),
      ),
      SenderModel(
        name: 'yoma😍',
        image: 'https://picsum.photos/200/300',
        messageText: 'This message was hidden',
        messageTime: '${DateTime.now().hour}:${DateTime.now().minute}',
        messageStatus: true,
        messageCount: 0,
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: ChatsScreenBody(messages: messages),
      ),
    );
  }
}
