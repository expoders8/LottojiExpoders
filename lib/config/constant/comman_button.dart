import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottoji/config/constant/color_constant.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color color;
  final Color textColor;
  final double fontSize;
  final String fontFamily;
  final BorderRadiusGeometry borderRadius;

  CommonButton({
    required this.text,
    required this.onPressed,
    this.height = 45.0,
    this.width = double.infinity,
    this.color = ksplashBackGroundColor,
    this.textColor = kWhiteColor,
    this.fontSize = 15.0,
    this.fontFamily = 'CircularStdNormal',
    this.borderRadius = const BorderRadius.all(Radius.circular(25)),
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontFamily: fontFamily,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
