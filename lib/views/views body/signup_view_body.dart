import 'package:flutter/material.dart';
import 'package:mobile_app_login_signup_pages/views/login.dart';
import 'package:mobile_app_login_signup_pages/widgets/custom_button.dart';

import '../../constants.dart';
import '../../widgets/custom_text_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/top sign page.png',
          width: double.infinity,
          height: 126.53,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 50),
        const Text(
          'Create Account',
          style: Constants.titleStyle,
          textAlign: TextAlign.center,
        ),
        const Text(
          'Enter your Personal Data',
          style: Constants.customText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        const CustomTextField(hintText: 'First Name',),
        const SizedBox(height: 10,),
        const CustomTextField(hintText: 'Last Name',),
        const SizedBox(height: 10,),
        const CustomTextField(hintText: 'Email Name',),
        const SizedBox(height: 10,),
        const CustomTextField(hintText: 'Phone Number',),
        const SizedBox(height: 10,),
        const CustomTextField(
          hintText: 'Create Password', icona: Icons.visibility,),
        const SizedBox(height: 10,),
        const CustomTextField(
          hintText: 'Confirm Password', icona: Icons.visibility,),
        const SizedBox(height: 16,),
        CustomButton(txt: 'Signup',
            txtColor: Colors.white,
            containerColor: Constants.mainColor),
        const SizedBox(height: 10,),
        RichText(
          text: TextSpan(
            text: 'By Continuing you are agreeing our ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 7,
              fontFamily: Constants.customFont,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'terms & conditions',
                style: TextStyle(fontSize: 7,
                  color: Constants.mainColor,
                  fontFamily: Constants.customFont,),
              ),
              TextSpan(
                text: ' and our privacy polices',
                style: TextStyle(fontSize: 7,),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Constants.mainColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  ' or signup with google ', style: TextStyle(fontSize: 8),),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Constants.mainColor,
                ),
              ),

            ],
          ),
        ),
        const SizedBox(height: 30,),
        CustomButton(txt: 'Continue with Google',
          txtColor: Colors.white,
          containerColor: Constants.mainColor,
          txtSize: 16,
          fontWeight: FontWeight.w700,),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an Account? ', style: TextStyle(fontSize: 10,),),
            GestureDetector(
                onTap: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login())),
                child: Text('Login',
                  style: TextStyle(fontSize: 10, color: Constants.mainColor),)),
            const SizedBox(height: 30,),
          ],
        ),
      ],
    );
  }
}
