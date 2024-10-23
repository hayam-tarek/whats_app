import 'package:flutter/material.dart';
import 'package:whats_app/features/updates/data/models/status_model.dart';
import 'package:whats_app/features/updates/presentation/views/widgets/contact_status.dart';

class UpdatesBuilder extends StatelessWidget {
  const UpdatesBuilder({
    super.key,
    required this.statuses,
  });

  final List<StatusModel> statuses;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: statuses.length,
      itemBuilder: (context, index) {
        return ContactStatus(statusModel: statuses[index]);
      },
    );
  }
}
