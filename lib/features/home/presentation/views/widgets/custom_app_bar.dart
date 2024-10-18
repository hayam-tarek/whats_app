import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    actions: [
      IconButton(
        onPressed: () {
          //TODO search
        },
        icon: const Icon(Icons.search),
      ),
      PopupMenuButton(
        itemBuilder: (context) {
          return [
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
