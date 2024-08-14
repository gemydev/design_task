import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../../../core/widgets/app_text.dart';

class PostCreationTrailerItem extends StatelessWidget {
  const PostCreationTrailerItem({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.filledGray,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 15,
                ),
                const SizedBox(
                  width: 3,
                ),
                AppText(
                  text: title,
                  textColor: AppColors.textGray,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ));
  }
}
