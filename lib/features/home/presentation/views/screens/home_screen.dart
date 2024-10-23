import 'package:flutter/material.dart';
import 'package:whats_app/features/calls/presentation/views/screens/calls_screen.dart';
import 'package:whats_app/features/chat/presentation/views/screens/chats_screen.dart';
import 'package:whats_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:whats_app/features/home/presentation/views/widgets/custom_circle_nav_bar.dart';
import 'package:whats_app/features/updates/presentation/views/screens/updates_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String id = "home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  PageController? pageController = PageController();
  List<Widget> screens = [
    const ChatsScreen(),
    const UpdatesScreen(),
    const Center(child: Text("Groups")),
    const CallsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      bottomNavigationBar: CustomCircleNavBar(
        index: index,
        onTap: (i) {
          setState(() {
            index = i;
            pageController!.jumpToPage(i);
          });
        },
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: screens.length,
        onPageChanged: (value) {
          setState(() {
            index = value;
            pageController!.jumpToPage(value);
          });
        },
        itemBuilder: (context, index) {
          return screens[index];
        },
      ),
    );
  }
}
