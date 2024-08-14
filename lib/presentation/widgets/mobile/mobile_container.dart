import 'package:flutter/material.dart';

import '../../../core/ui/spaces.dart';

class MobileContainer extends StatelessWidget {
  const MobileContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpaces.appHorizontalSpace,
      ),
      child: child,
    );
  }
}
