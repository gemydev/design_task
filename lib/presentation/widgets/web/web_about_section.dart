import 'package:design_task/core/widgets/app_button.dart';
import 'package:design_task/core/widgets/app_text.dart';
import 'package:design_task/presentation/widgets/intro_text.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../profile_about_items.dart';

class WebAboutSection extends StatelessWidget {
  const WebAboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    decoration: const BoxDecoration(
                        color: AppColors.mainColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.vpn_lock,
                        size: 15,
                        color: AppColors.white,
                      ),
                    )),
                const SizedBox(
                  width: 8,
                ),
                const AppText(
                  text: "Intro",
                  textColor: AppColors.black,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const IntroText(),
            const Divider(),
            const ProfileAboutItems(),
            const Divider(),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_border_rounded,
                  color: AppColors.iconsGray,
                ),
                SizedBox(
                  height: 5,
                ),
                AppText(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  fontSize: 14,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                AppText(
                  text: "Add to Featured",
                  fontSize: 16,
                  textAlign: TextAlign.center,
                  textColor: AppColors.blue,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: AppButton(
                        text: "mohamed.com",
                        textColor: AppColors.iconsGray,
                        icon: Icons.vpn_lock,
                        iconColor: AppColors.iconsGray,
                        backgroundColor: AppColors.white,
                        iconSize: 15,
                        textFontSize: 10,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Flexible(
                      flex: 1,
                      child: AppButton(
                        text: "mohamed.com",
                        textColor: AppColors.iconsGray,
                        icon: Icons.vpn_lock,
                        iconColor: AppColors.iconsGray,
                        backgroundColor: AppColors.white,
                        iconSize: 15,
                        textFontSize: 10,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
