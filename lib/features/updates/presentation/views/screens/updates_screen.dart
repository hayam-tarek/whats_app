import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_spacing.dart';
import 'package:whats_app/features/updates/data/models/status_model.dart';
import 'package:whats_app/features/updates/presentation/views/widgets/my_status.dart';
import 'package:whats_app/features/updates/presentation/views/widgets/text_title.dart';
import 'package:whats_app/features/updates/presentation/views/widgets/updates_builder.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  static const String id = "updates-screen";

  @override
  Widget build(BuildContext context) {
    List<StatusModel> statuses = [
      StatusModel(
        name: "Hayam Tarek",
        time: "Today, 10:00 AM",
        imageUrl: "https://picsum.photos/200/300",
        viewed: false,
      ),
      StatusModel(
        name: "yoma😍",
        time: "Today, 07:00 pm",
        imageUrl: "https://picsum.photos/200/300",
        viewed: true,
      ),
      StatusModel(
        name: "Ahmed Mohamed",
        time: "Yesterday, 05:59 pm",
        imageUrl: "https://picsum.photos/200/300",
        viewed: false,
      ),
      StatusModel(
        name: "🤍ماما",
        time: "Today, 06:00 am",
        imageUrl: "https://picsum.photos/200/300",
        viewed: true,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AssetSpacing.paddingSpace),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: MyStatus(),
              ),
              const SliverToBoxAdapter(
                child: Divider(),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: TextTitle(title: "Resent Updates"),
                ),
              ),
              UpdatesBuilder(
                statuses: statuses.where((status) => !status.viewed).toList(),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: TextTitle(title: "Viewed Updates"),
                ),
              ),
              UpdatesBuilder(
                statuses: statuses.where((status) => status.viewed).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
