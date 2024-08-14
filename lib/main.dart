import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'presentation/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 480, name: MOBILE),
          const Breakpoint(start: 481, end: 1200, name: TABLET),
          const Breakpoint(start: 1201, end: double.infinity, name: DESKTOP),
        ],
        child: child!,
      ),
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
