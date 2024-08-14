import 'package:flutter/material.dart';

import '../../core/dummy/dummy.dart';
import 'about_item.dart';

class ProfileAboutItems extends StatelessWidget {
  const ProfileAboutItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: DummyData.aboutItems.map((e) {
        return AboutItemWidget(
            firstText: e.firstText, secondText: e.secondText);
      }).toList(),
    );
  }
}
