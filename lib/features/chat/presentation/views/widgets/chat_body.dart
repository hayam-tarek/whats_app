import 'package:flutter/material.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({super.key, this.controller});
  final ScrollController? controller;

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: widget.controller,
      reverse: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container();
      },
    );
  }
}
