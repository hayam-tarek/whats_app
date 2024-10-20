import 'package:flutter/widgets.dart';
import 'package:whats_app/core/constants/asset_spacing.dart';
import 'package:whats_app/features/chat/data/models/sender_model.dart';
import 'package:whats_app/features/chat/presentation/views/widgets/message_item.dart';

class ChatsScreenBody extends StatelessWidget {
  const ChatsScreenBody({
    super.key,
    required this.messages,
  });

  final List<SenderModel> messages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AssetSpacing.paddingSpace,
      ),
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return MessageItem(senderModel: messages[index]);
        },
      ),
    );
  }
}
