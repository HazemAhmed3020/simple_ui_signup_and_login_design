import 'package:flutter/material.dart';
import 'package:mobile_app_login_signup_pages/constants.dart';
import 'package:mobile_app_login_signup_pages/views/login.dart';
import 'package:mobile_app_login_signup_pages/widgets/custom_button.dart';
import 'signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/top main login page.png',
            width: double.infinity,
            height: 126.53,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 50),
          const Text(
            'Welcome!',
            style: Constants.titleStyle,
            textAlign: TextAlign.center,
          ),

          const Text(
            'Find the things that you love!',
            style: Constants.customText,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Image.asset(
            'assets/welcome.png',
            width: double.infinity,
            height: 280,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 30),
          CustomButton(
            txt: 'Sign Up',
            txtColor: Colors.white,
            containerColor: Constants.mainColor,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
            ),
          ),
          SizedBox(height: 30),
          CustomButton(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            ),
            txt: 'Login',
            txtColor: Constants.mainColor,
            containerColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
