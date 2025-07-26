import 'package:flutter/material.dart';

class CustomBottomSheet {
  // Custom bottom sheet widget with a title and a list of items
  final String title;
  final List<String> items;

  CustomBottomSheet({required this.title, required this.items});

  // Example method to display the bottom sheet
  void showCustomModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
      builder: (_) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // ...items.map((item) => ListTile(
            //       leading: const Icon(Icons.arrow_right),
            //       title: Text(item),
            //       onTap: () {},
            //     )),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('help'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('profile'),
              onTap: () {},
            ),ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('logout'),
              onTap: () {},
            ),ListTile(
              leading: const Icon(Icons.close),
              title: const Text('close'),
              onTap: () {
                Navigator.of(context).pop(); // Close the bottom sheet
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}