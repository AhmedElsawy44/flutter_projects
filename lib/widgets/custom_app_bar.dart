import 'package:flutter/material.dart';
import 'package:iti_project/res/theme_notifier.dart';
import 'package:iti_project/widgets/custom_bottom_sheet.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ✅ صورة + النصوص تحتها بـ 30
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة دائرية
            Container(
  padding: const EdgeInsets.all(2), // سمك البوردر
  decoration: BoxDecoration(
    color: Colors.white, // لون البوردر
    shape: BoxShape.circle,
  ),
  child: ClipOval(
    child: Image.asset(
      'assets/images/profile-image.jpg',
      width: 80,
      height: 80,
      fit: BoxFit.cover,
    ),
  ),
),
            const SizedBox(height: 30),
            const Text(
              'Hello, Ahmed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'What do you want to buy today?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),

        // ✅ أزرار الثيم والمينيو
        Row(
          children: [
            IconButton(
              icon: Icon(
                themeNotifier.value == ThemeMode.dark
                    ? Icons.light_mode
                    : Icons.dark_mode,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {
                themeNotifier.value = themeNotifier.value == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light;
              },
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                CustomBottomSheet(
                  title: 'Menu',
                  items: ['Profile', 'Settings', 'Logout'],
                ).showCustomModalBottomSheet(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}
