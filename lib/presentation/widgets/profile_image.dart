import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/ui/colors.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.filledGray),
            color: AppColors.white,
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/person.jpg"),
              ),
              ResponsiveBreakpoints.of(context).isMobile
                  ? const Positioned(
                      right: -5,
                      bottom: 10,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.filledGray,
                        child: Icon(
                          Icons.camera_alt,
                          size: 17,
                          color: AppColors.black,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
