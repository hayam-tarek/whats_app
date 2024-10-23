import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/colors.dart';
import 'package:whats_app/features/updates/data/models/status_model.dart';

class ContactStatus extends StatefulWidget {
  const ContactStatus({
    super.key,
    required this.statusModel,
  });
  final StatusModel statusModel;

  @override
  State<ContactStatus> createState() => _ContactStatusState();
}

class _ContactStatusState extends State<ContactStatus> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO show status
        setState(() {
          widget.statusModel.viewed = true;
        });
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: widget.statusModel.viewed != true
                ? AppColors.primaryColor
                : Colors.grey[300],
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(widget.statusModel.imageUrl),
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text(
                widget.statusModel.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                widget.statusModel.time,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
