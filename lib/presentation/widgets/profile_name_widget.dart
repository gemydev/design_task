import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/ui/colors.dart';
import '../../core/widgets/app_text.dart';

class ProfileNameWidget extends StatelessWidget {
  const ProfileNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile
        ? const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "Mohamed Gamal ",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "(Gemy Dev)",
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ],
          )
        : const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Mohamed Gamal ",
                fontSize: 20,
                textColor: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "(Gemy Dev)",
                fontSize: 15,
                textColor: AppColors.white,
                fontWeight: FontWeight.normal,
              ),
            ],
          );
  }
}
