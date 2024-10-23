import 'package:flutter/material.dart';
import 'package:whats_app/features/calls/data/models/call_model.dart';
import 'package:whats_app/features/calls/presentation/views/widgets/calls_screen_body.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});
  static const String id = 'calls-screen';

  @override
  Widget build(BuildContext context) {
    List<CallModel> calls = [
      CallModel(
        name: 'Hayam Tarek',
        image: null,
        time: 'today, 11:05 pm',
        typeOfCall: 'incoming',
      ),
      CallModel(
        name: 'yoma😍',
        image: 'https://picsum.photos/200/300',
        time: 'today, 11:05 pm',
        typeOfCall: 'outgoing',
      ),
      CallModel(
        name: 'ahmed',
        image: 'https://picsum.photos/200/300',
        time: 'today, 11:05 pm',
        typeOfCall: 'missed',
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: CallsScreenBody(calls: calls),
      ),
    );
  }
}
