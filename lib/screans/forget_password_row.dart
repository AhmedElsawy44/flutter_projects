import 'package:flutter/material.dart';
import 'package:iti_project/res/app_colors.dart';
import 'package:iti_project/screans/otp_screen.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('استعادة كلمة المرور'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'من فضلك أدخل رقم الهاتف المرتبط بحسابك',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const CustomTextField(
              hint: 'رقم الهاتف',
              icon: Icons.phone,
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'التالي',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OtpView()),
                );
              },
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
