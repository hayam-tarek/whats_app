import 'package:flutter/material.dart';
import 'package:whats_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:whats_app/features/home/presentation/views/widgets/custom_circle_nav_bar.dart';

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
    const Center(child: Text("Chats")),
    const Center(child: Text("Updates")),
    const Center(child: Text("Calls")),
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
