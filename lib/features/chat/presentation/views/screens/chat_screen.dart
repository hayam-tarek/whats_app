// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_spacing.dart';
import 'package:whats_app/features/chat/data/models/sender_model.dart';
import 'package:whats_app/features/chat/presentation/views/widgets/chat_appbar.dart';
import 'package:whats_app/features/chat/presentation/views/widgets/chat_body.dart';
import 'package:whats_app/features/chat/presentation/views/widgets/sent_message_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  static const String id = 'chat-screen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var senderModel = ModalRoute.of(context)!.settings.arguments as SenderModel;
    return Scaffold(
      appBar: chatAppBar(senderModel: senderModel),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AssetSpacing.paddingSpace),
        child: Column(
          children: [
            Expanded(
              child: ChatBody(
                controller: scrollController,
              ),
            ),
            SendMessageWidget(
              scrollController: scrollController,
            ),
          ],
        ),
      ),
    );
  }
}
