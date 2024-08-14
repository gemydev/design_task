import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../../../core/widgets/app_button.dart';

class MobileProfileActionRow extends StatelessWidget {
  const MobileProfileActionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: AppButton(
            backgroundColor: AppColors.blue,
            icon: Icons.camera_alt,
            iconColor: AppColors.white,
            text: "Add Story",
            textColor: AppColors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        AppButton(
          icon: Icons.settings,
        ),
        SizedBox(
          width: 10,
        ),
        AppButton(
          icon: Icons.more_horiz,
        ),
      ],
    );
  }
}
