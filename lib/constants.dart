import 'package:flutter/material.dart';

abstract class Constants {
  static const mainColor = Color(0xFF64C3BF);
  static const TextStyle titleStyle = TextStyle(
    color: Constants.mainColor,
    fontWeight: FontWeight.w700,
    fontSize: 48,
    fontFamily: customFont,
  );
  static const TextStyle customText = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const String customFont = 'Poppins';
}
