import 'package:flutter/widgets.dart';
import 'package:whats_app/core/constants/asset_spacing.dart';
import 'package:whats_app/features/calls/data/models/call_model.dart';
import 'package:whats_app/features/calls/presentation/views/widgets/call_item.dart';

class CallsScreenBody extends StatelessWidget {
  const CallsScreenBody({
    super.key,
    required this.calls,
  });

  final List<CallModel> calls;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AssetSpacing.paddingSpace,
      ),
      child: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          return CallItem(callModel: calls[index]);
        },
      ),
    );
  }
}
