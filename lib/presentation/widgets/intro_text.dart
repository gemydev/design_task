import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/ui/colors.dart';
import '../../core/widgets/app_text.dart';

class IntroText extends StatelessWidget {
  const IntroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppText(
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      fontSize: ResponsiveBreakpoints.of(context).isMobile ? 15 : 14,
      textAlign: TextAlign.center,
      textColor: ResponsiveBreakpoints.of(context).isMobile
          ? AppColors.textGray
          : AppColors.black,
    );
  }
}
