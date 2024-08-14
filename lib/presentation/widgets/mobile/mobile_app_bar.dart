import 'package:flutter/material.dart';

import '../search_text_filed.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios_new_outlined)),
              const Expanded(
                child: SearchTextField(),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
