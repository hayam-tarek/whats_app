import 'package:flutter/material.dart';
import 'package:whats_app/features/home/presentation/views/screens/custom_search_delegate.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    actions: [
      IconButton(
        onPressed: () {
          showSearch(
            context: context,
            delegate: CustomSearchDelegate(),
          );
        },
        icon: const Icon(Icons.search),
      ),
      PopupMenuButton(
        position: PopupMenuPosition.under,
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              value: 1,
              child: const Text("New group"),
              onTap: () {
                //TODO new group
              },
            ),
            PopupMenuItem(
              value: 1,
              child: const Text("Profile"),
              onTap: () {
                //TODO profile
              },
            ),
            PopupMenuItem(
              value: 1,
              child: const Text("Settings"),
              onTap: () {
                //TODO settings
              },
            ),
            PopupMenuItem(
              value: 2,
              child: const Text("Logout"),
              onTap: () {
                //TODO logout
              },
            ),
          ];
        },
      ),
    ],
    title: const Text("WhatsUp"),
    shadowColor: Theme.of(context).primaryColor,
    elevation: 1,
    foregroundColor: Theme.of(context).primaryColor,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    titleTextStyle: TextStyle(
      color: Theme.of(context).primaryColor,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  );
}
