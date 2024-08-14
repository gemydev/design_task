import 'package:flutter/material.dart';

import '../ui/colors.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.textColor = AppColors.black,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
  });

  final String text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
