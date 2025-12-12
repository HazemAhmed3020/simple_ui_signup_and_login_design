import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.icona});
  final String hintText;
  final IconData? icona;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(icona , color: Color(0xffACA7A7)),
          hint: Text(hintText, textAlign: TextAlign.left, style: TextStyle(color: Color(0xffACA7A7),),),
          contentPadding: EdgeInsets.only(left: 20 , top: 15 , bottom: 15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Constants.mainColor,
              width: 2,
            ),
          )
        ),
      ),
    );
  }
}
