import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../../../core/widgets/app_text.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/person.jpg"),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: AppText(
              text: "Mohamed Gamal",
              fontSize: 12,
            ),
          )),
          Icon(
            Icons.brightness_1,
            size: 8,
            color: AppColors.green,
          )
        ],
      ),
    );
  }
}
