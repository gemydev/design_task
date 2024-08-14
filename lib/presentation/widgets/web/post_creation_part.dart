import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import 'post_creation_header.dart';
import 'post_creation_trailer.dart';

class PostCreationPart extends StatelessWidget {
  const PostCreationPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          PostCreationHeader(),
          Divider(),
          PostCreationTrailer()
        ],
      ),
    );
  }
}
