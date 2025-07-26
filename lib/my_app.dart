import 'package:flutter/material.dart';
import 'package:iti_project/res/app_themes.dart';
import 'package:iti_project/screans/home_page.dart';
import 'package:iti_project/screans/welcome_screen.dart';
import 'package:iti_project/res/theme_notifier.dart'; // NEW import

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, mode, __) {
        return MaterialApp(
          title: 'ITI Project',
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: mode, // Dynamic mode (light or dark)
          home: const WelcomeScreen(),
        );
      },
    );
  }
}
