import 'package:flutter/material.dart';
import 'package:whats_app/features/calls/data/models/call_model.dart';

class CallItem extends StatefulWidget {
  const CallItem({super.key, required this.callModel});
  final CallModel callModel;

  @override
  State<CallItem> createState() => _CallItemState();
}

class _CallItemState extends State<CallItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: widget.callModel.image != null
            ? CircleAvatar(
                backgroundImage: NetworkImage(widget.callModel.image!),
              )
            : const Icon(Icons.person),
      ),
      title: Text(
        widget.callModel.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: widget.callModel.typeOfCall == 'missed' ? Colors.red : null,
        ),
      ),
      subtitle: Row(
        children: [
          if (widget.callModel.typeOfCall == 'outgoing')
            const Icon(
              Icons.call_made,
              color: Colors.green,
            ),
          if (widget.callModel.typeOfCall == 'incoming')
            const Icon(
              Icons.call_received,
              color: Colors.green,
            ),
          if (widget.callModel.typeOfCall == 'missed')
            const Icon(
              Icons.call_missed,
              color: Colors.red,
            ),
          Text(widget.callModel.time),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          //TODO recall
        },
        icon: const Icon(Icons.call),
      ),
    );
  }
}
