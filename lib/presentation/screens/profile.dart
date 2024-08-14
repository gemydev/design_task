import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets/mobile/mobile_app_bar.dart';
import '../widgets/mobile/mobile_profile_body.dart';
import '../widgets/web/web_app_bar.dart';
import '../widgets/web/web_profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveBreakpoints.of(context).isMobile
                ? const MobileAppBar()
                : const WebMenuBar(),
            Expanded(
              child: SingleChildScrollView(
                child: ResponsiveBreakpoints.of(context).isMobile
                    ? const MobileProfileBody()
                    : const WebProfileBody(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
