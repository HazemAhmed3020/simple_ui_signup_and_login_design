import 'package:flutter/material.dart';
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
          const CustomTextField(hintText: 'Create Password', icona: Icons.visibility,),
          const SizedBox(height: 10,),
          const CustomTextField(hintText: 'Confirm Password',icona: Icons.visibility,),
          const SizedBox(height: 16,),
          CustomButton(txt: 'Signup', txtColor: Colors.white, containerColor: Constants.mainColor),
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
                  style: TextStyle(fontSize: 7, color: Constants.mainColor , fontFamily: Constants.customFont,),
                ),
                TextSpan(
                  text: ' and our privacy polices',
                  style: TextStyle(fontSize: 7,),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            height: 16,
            width: MediaQuery.of(context).size.width - 60,
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    thickness: 3,
                    indent: 53,
                    endIndent: 53,
                    color: Constants.mainColor,
                  ),
                  Text(' or signup with google ' , style: TextStyle(fontSize: 8),),
                  Divider(
                    thickness: 3,
                    indent: 53,
                    endIndent: 53,
                    color: Constants.mainColor,
                  ),
                ],
              ),
            ),
          )
        ],
    );
  }
}
