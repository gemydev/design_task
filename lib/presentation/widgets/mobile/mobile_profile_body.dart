import 'package:flutter/material.dart';

import '../intro_text.dart';
import '../profile_about_items.dart';
import '../profile_name_widget.dart';
import 'mobile_container.dart';
import 'mobile_cover_and_profile_image.dart';
import 'mobile_profile_action_row.dart';

class MobileProfileBody extends StatelessWidget {
  const MobileProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MobileContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MobileCoverAndProfileImage(),
          SizedBox(
            height: 55,
          ),
          ProfileNameWidget(),
          IntroText(),
          SizedBox(
            height: 10,
          ),
          MobileProfileActionRow(),
          Divider(),
          ProfileAboutItems(),
        ],
      ),
    );
  }
}
