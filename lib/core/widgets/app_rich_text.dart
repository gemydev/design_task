import 'package:flutter/material.dart';

import '../ui/colors.dart';

class AppRichText extends StatelessWidget {
  const AppRichText(
      {super.key,
      required this.firstText,
      this.firstTextColor,
      required this.secondText,
      this.secondTextColor,
      this.firstFontSize,
      this.secondFontSize,
      this.secondFontWeight});

  final String firstText;
  final Color? firstTextColor;
  final double? firstFontSize;
  final String secondText;
  final Color? secondTextColor;
  final double? secondFontSize;
  final FontWeight? secondFontWeight;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: firstText,
            style: TextStyle(
                color: firstTextColor ?? AppColors.black,
                fontSize: firstFontSize)),
        TextSpan(
            text: secondText,
            style: TextStyle(
                color: secondTextColor ?? AppColors.black,
                fontSize: secondFontSize,
                fontWeight: secondFontWeight)),
      ]),
    );
  }
}
