import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/colors.dart';
import 'package:whats_app/features/chat/data/models/sender_model.dart';

class MessageItem extends StatefulWidget {
  const MessageItem({super.key, required this.senderModel});
  final SenderModel senderModel;

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO open chat screen
        setState(() {
          widget.senderModel.messageCount = 0;
        });
      },
      child: ListTile(
        leading: CircleAvatar(
          child: widget.senderModel.image != null
              ? CircleAvatar(
                  backgroundImage: NetworkImage(widget.senderModel.image!))
              : const Icon(Icons.person),
        ),
        title: Text(
          widget.senderModel.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(widget.senderModel.messageText),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.senderModel.messageTime,
              style: TextStyle(
                  color: widget.senderModel.messageCount != 0
                      ? AppColors.primaryColor
                      : Colors.grey),
            ),
            if (widget.senderModel.messageCount != 0)
              Badge.count(
                count: widget.senderModel.messageCount,
                backgroundColor: AppColors.primaryColor,
              ),
            if (widget.senderModel.messageCount == 0) const SizedBox(),
          ],
        ),
      ),
    );
  }
}
