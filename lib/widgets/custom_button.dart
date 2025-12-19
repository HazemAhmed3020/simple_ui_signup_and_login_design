import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton( {
    super.key,
    this.onTap,
    required this.txt,
    required this.txtColor,
    required this.containerColor,
    this.txtSize = 27,
    this.fontWeight = FontWeight.w500,
  });
  final void Function()? onTap;
  final String txt;
  final Color txtColor;
  final Color containerColor;
 final double? txtSize;
 final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 44,
        width: 220,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: BoxBorder.all(color: Constants.mainColor, width: 2),
            color: containerColor,
          ),
          child: Text(
            txt,
            style: TextStyle(
              color: txtColor,
              fontSize: txtSize,
              fontFamily: Constants.customFont,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
