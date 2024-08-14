import 'package:design_task/core/widgets/app_button.dart';
import 'package:design_task/presentation/widgets/profile_name_widget.dart';
import 'package:design_task/presentation/widgets/web/web_sections_item.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../../../core/widgets/app_text.dart';
import '../profile_image.dart';

class WebCoverAndProfileImage extends StatelessWidget {
  const WebCoverAndProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                color: AppColors.blue,
              ),
            ),
            Container(
              height: 40,
              color: AppColors.white,
              child: const Row(
                children: [
                  SizedBox(
                    width: 200,
                  ),
                  VerticalDivider(),
                  WebSectionsItem(
                    title: "Timeline",
                    secondPart: Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.mainColor,
                    ),
                  ),
                  WebSectionsItem(
                    title: "About",
                  ),
                  WebSectionsItem(
                    title: "Friends",
                    secondPart: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: AppText(
                        text: "1.497",
                        fontSize: 12,
                        textColor: AppColors.textGray,
                      ),
                    ),
                  ),
                  WebSectionsItem(
                    title: "Photos",
                  ),
                  WebSectionsItem(
                    firstPart: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.lock,
                        size: 18,
                        color: AppColors.mainColor,
                      ),
                    ),
                    title: "Archive",
                  ),
                  WebSectionsItem(
                    title: "More",
                    secondPart: Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Positioned(
          bottom: 18,
          left: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileImageWidget(),
              SizedBox(
                width: 15,
              ),
              ProfileNameWidget(),
              SizedBox(
                width: 180,
              ),
              Wrap(
                clipBehavior: Clip.none,
                children: [
                  AppButton(
                    text: "Edit Profile",
                    textColor: AppColors.black,
                    backgroundColor: AppColors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  AppButton(
                    text: "Activity Log",
                    textColor: AppColors.black,
                    backgroundColor: AppColors.white,
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
