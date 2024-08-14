import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/ui/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();

    OutlineInputBorder border = OutlineInputBorder(
        borderSide: const BorderSide(style: BorderStyle.none),
        borderRadius: BorderRadius.circular(
            ResponsiveBreakpoints.of(context).isMobile ? 25 : 5));

    return TextField(
      controller: messageController,
      style: const TextStyle(
        color: AppColors.black,
      ),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          prefixIcon: ResponsiveBreakpoints.of(context).isMobile
              ? const Icon(
                  Icons.search,
                  color: AppColors.iconsGray,
                  size: 25,
                )
              : Container(),
          suffixIcon: ResponsiveBreakpoints.of(context).isMobile
              ? Container()
              : const Icon(
                  Icons.search,
                  color: AppColors.iconsGray,
                  size: 25,
                ),
          enabledBorder: border,
          focusedBorder: border,
          filled: true,
          fillColor: AppColors.filledGray),
    );
  }
}
