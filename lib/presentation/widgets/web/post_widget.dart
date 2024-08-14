import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../../../core/widgets/app_rich_text.dart';
import '../../../core/widgets/app_text.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/person.jpg"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppRichText(
                          firstText: "Mohamed Gamal ",
                          secondText: "updated his covered profile",
                          secondTextColor: AppColors.textGray,
                          firstTextColor: AppColors.mainColor,
                        ),
                        AppText(
                          text: "29 min",
                          fontSize: 12,
                          textColor: AppColors.textGray,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                AppRichText(
                  firstText: "Source : ",
                  secondText: "http://gemydev.com",
                  secondTextColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: Container(
            color: AppColors.green,
          ))
        ],
      ),
    );
  }
}
