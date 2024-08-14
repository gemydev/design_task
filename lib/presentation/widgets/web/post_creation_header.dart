import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/ui/colors.dart';
import 'web_sections_item.dart';

class PostCreationHeader extends StatelessWidget {
  const PostCreationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ResponsiveRowColumnItem(
          rowColumn: true,
          child: WebSectionsItem(
            title: "Create Post",
            titleFontSize: 12,
            firstPart: Icon(
              Icons.create,
              color: AppColors.iconsGray,
              size: 15,
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowColumn: true,
          child: WebSectionsItem(
            title: "Photo/Video",
            titleFontSize: 12,
            firstPart: Icon(
              Icons.camera_alt,
              color: AppColors.iconsGray,
              size: 15,
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowColumn: true,
          child: WebSectionsItem(
            title: "Live Video",
            titleFontSize: 12,
            firstPart: Icon(
              Icons.video_call,
              color: AppColors.iconsGray,
              size: 15,
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowColumn: true,
          child: WebSectionsItem(
            title: "Life Event",
            titleFontSize: 12,
            firstPart: Icon(
              Icons.flag,
              color: AppColors.iconsGray,
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}
