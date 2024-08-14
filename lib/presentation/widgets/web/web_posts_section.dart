import 'package:flutter/material.dart';

import 'post_creation_part.dart';
import 'post_widget.dart';

class WebPostsSection extends StatelessWidget {
  const WebPostsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostCreationPart(),
          SizedBox(
            height: 15,
          ),
          PostWidget(),
        ],
      ),
    );
  }
}
