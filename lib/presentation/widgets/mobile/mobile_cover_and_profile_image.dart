import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../profile_image.dart';

class MobileCoverAndProfileImage extends StatelessWidget {
  const MobileCoverAndProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              border: Border.all(
                color: AppColors.filledGray,
              )),
        ),
        const Positioned(
          bottom: -50,
          left: 1,
          right: 1,
          child: ProfileImageWidget(),
        )
      ],
    );
  }
}
