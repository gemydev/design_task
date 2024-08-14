import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/ui/colors.dart';
import '../../core/widgets/app_rich_text.dart';

class AboutItemWidget extends StatelessWidget {
  const AboutItemWidget({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(
            Icons.business_center_sharp,
            color: AppColors.iconsGray,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: AppRichText(
            firstText: firstText,
            secondText: secondText,
            secondTextColor: ResponsiveBreakpoints.of(context).isMobile
                ? null
                : AppColors.textBlue,
            secondFontWeight: ResponsiveBreakpoints.of(context).isMobile
                ? FontWeight.bold
                : FontWeight.normal,
          ))
        ],
      ),
    );
  }
}
