import 'package:flutter/material.dart';

import '../../../core/widgets/app_text.dart';
import 'contact_item.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const AppText(
          text: "CONTACTS",
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        ListView.builder(
            itemCount: 19,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return const ContactItem();
            }),
      ],
    );
  }
}
