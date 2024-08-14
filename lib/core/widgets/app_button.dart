import 'package:flutter/material.dart';

import '../ui/colors.dart';
import 'app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.icon,
      this.text,
      this.textColor,
      this.iconColor,
      this.backgroundColor,
      this.iconSize,
      this.textFontSize});

  final IconData? icon;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final double? iconSize;
  final double? textFontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.filledGray,
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon != null
                  ? Icon(
                      icon,
                      color: iconColor ?? AppColors.black,
                      size: iconSize,
                    )
                  : Container(),
              icon != null && text != null
                  ? const SizedBox(
                      width: 5,
                    )
                  : Container(),
              text != null
                  ? AppText(
                      text: text!,
                      textColor: textColor ?? AppColors.white,
                      fontSize: textFontSize,
                    )
                  : Container(),
            ],
          ),
        ));
  }
}
