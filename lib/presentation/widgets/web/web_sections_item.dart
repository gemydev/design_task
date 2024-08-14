import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../../../core/widgets/app_text.dart';

class WebSectionsItem extends StatelessWidget {
  const WebSectionsItem({
    super.key,
    required this.title,
    this.secondPart,
    this.firstPart,
    this.titleFontSize,
  });

  final String title;
  final Widget? secondPart;
  final Widget? firstPart;
  final double? titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        firstPart ?? Container(),
        firstPart != null
            ? const SizedBox(
                width: 3,
              )
            : Container(),
        AppText(
          text: title,
          textColor: AppColors.mainColor,
          fontSize: titleFontSize,
          fontWeight: FontWeight.bold,
        ),
        secondPart ?? Container(),
        const VerticalDivider(),
      ],
    );
  }
}
