import 'package:flutter/material.dart';
import 'package:iti_project/app_colors.dart';
import 'package:iti_project/screans/login_page.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F36),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.network(
              'https://media.giphy.com/media/OkJat1YNdoD3W/giphy.gif', 
              height: 200,
              width: 200,
            ),
             const SizedBox(height: 16),

            const Text(
              'أهلاً بك في تطبيقنا',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            
            const Text(
              'نحن هنا لمساعدتك في الوصول بسهولة ودعم احتياجاتك.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomButton(
              text: 'ابدأ الآن',
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              ),
              backgroundColor: Colors.white,
              textColor: AppColors.primary,
            ),
             const Spacer(),
          ],
        ),
      ),
    );
  }
}
