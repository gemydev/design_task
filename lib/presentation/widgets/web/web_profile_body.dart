import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'contacts_widget.dart';
import 'web_about_section.dart';
import 'web_cover_and_profile_image.dart';
import 'web_posts_section.dart';

class WebProfileBody extends StatelessWidget {
  const WebProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Container(),
        ),
        Flexible(
          flex: 8,
          child: Column(
            mainAxisAlignment: ResponsiveBreakpoints.of(context).isMobile
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: const [
              WebCoverAndProfileImage(),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 2,
                    child: WebAboutSection(),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    flex: 3,
                    child: WebPostsSection(),
                  ),
                ],
              )
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(),
        ),
        const Flexible(
          flex: 2,
          child: ContactsWidget(),
        ),
      ],
    );
  }
}
