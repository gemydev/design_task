import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'post_creation_trailer_item.dart';

class PostCreationTrailer extends StatelessWidget {
  const PostCreationTrailer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 100,
          ),
          const Divider(),
          const ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.ROW,
            rowSpacing: 5,
            children: [
              ResponsiveRowColumnItem(
                rowColumn: true,
                child: PostCreationTrailerItem(
                  title: "Photo/Video",
                  icon: Icons.photo,
                ),
              ),
              ResponsiveRowColumnItem(
                rowColumn: true,
                child: PostCreationTrailerItem(
                  title: "Tag Friends",
                  icon: Icons.photo,
                ),
              ),
              ResponsiveRowColumnItem(
                rowColumn: true,
                child: PostCreationTrailerItem(
                  title: "Felling/Activity",
                  icon: Icons.photo,
                ),
              ),
              ResponsiveRowColumnItem(
                rowColumn: true,
                child: PostCreationTrailerItem(
                  title: "",
                  icon: Icons.more_horiz,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
