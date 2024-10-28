import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/colors.dart';

class SendMessageWidget extends StatelessWidget {
  SendMessageWidget({
    super.key,
    required this.scrollController,
  });

  final TextEditingController textEditingController = TextEditingController();
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    //TODO emoji
                  },
                  icon: const Icon(Icons.emoji_emotions_outlined),
                ),
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Message',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    //TODO send file
                  },
                  icon: const Icon(Icons.attach_file),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          child: IconButton(
            onPressed: () {
              //TODO send message
              textEditingController.clear();
              scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
            icon: Icon(
              Icons.send,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
