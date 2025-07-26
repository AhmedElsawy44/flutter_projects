import 'package:flutter/material.dart';
import 'package:iti_project/res/app_strings.dart';
import 'package:iti_project/screans/forget_password_row.dart';
import 'package:iti_project/screans/otp_screen.dart';
import 'package:iti_project/widgets/custom_button.dart';
import 'package:iti_project/widgets/custom_text_field.dart';
import 'package:iti_project/res/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Positioned(
            top: 200,
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
            top: 300,
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
            top: 90,
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
            left: 100,
            child: Container(
              width: 150,
              height: 100,
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
                SizedBox(height: MediaQuery.sizeOf(context).height * .03),
                Text(
                  AppStrings.loginScreenWelcomeText,
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.textLight,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * .08),
                CustomTextField (
                  icon: Icons.person,
                  hint: 'Username',
                  isPassword: false,
                ),
                SizedBox(height: 35),
                CustomTextField(
                  icon: Icons.password,
                  hint: 'Password',
                  isPassword: true,
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * .015),

                CustomButton(
                  textColor: AppColors.textDark,
                  backgroundColor: AppColors.buttonDisabled,
                  text: 'Login',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OtpView()),
                    );
                  },
                ),
                SizedBox(height:12),
                GestureDetector(
                   onTap: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => ForgetPassword()));},
                 child: Text(
                   'Forget password?',
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.textLight,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      
                    ),
                ),
                ),
                
                SizedBox(height: MediaQuery.sizeOf(context).height * .01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account ?',
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.textLight,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to sign up page
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0XFF9B28B2),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
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