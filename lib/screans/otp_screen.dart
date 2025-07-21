import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:iti_project/widgets/custom_button.dart';
import 'package:iti_project/app_colors.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 150,
            left: 0,
            child: Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                color:AppColors.primary,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
          ),
           Positioned(
            top: 250,
            left: 0,
            child: Container(
              width: 120,
              height: 100,
              decoration: BoxDecoration(
                color:AppColors.primary,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            right: 0,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.pink.shade300,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(50),
                ),
              ),
            ),
          ),
          
           Positioned(
            top: 0,
            left: 150,
            child: Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 81, 41, 55),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(80),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.sizeOf(context).height * 0.5,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                color: AppColors.primary,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Text(
                      '  OTP ادخل رمز التحقق ',
                      style: TextStyle(
                        color: AppColors.textLight,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'لقد ارسلنا الكود الخاص بك الي 000****010',
                      style: TextStyle(color: AppColors.textLight, fontSize: 20),
                    ),
                   
                    SizedBox(height: 50),
                    OtpTextField(
                      textStyle: TextStyle(fontSize: 17),
                      filled: true,
                      fillColor: Colors.white,
                      margin: EdgeInsets.only(right: 15),
                      borderColor: AppColors.borderColor,
                      borderWidth: 5,
                      numberOfFields: 6,
                      showFieldAsBox: true,
                      enabledBorderColor: Colors.white,
                      focusedBorderColor: Colors.white,
                    ),
                    SizedBox(height: 50),
                    CustomButton(
                      text: 'تأكيد',
                      onTap: () {},
                      backgroundColor: AppColors.secondary,
                      textColor: AppColors.textDark,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}