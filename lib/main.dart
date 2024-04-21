import 'package:chatzon/constants/colors.dart';
import 'package:chatzon/constants/strings.dart';
import 'package:chatzon/screens/mobile_layout_screen.dart';
import 'package:chatzon/screens/web_layout_screen.dart';
import 'package:chatzon/utils/responsive_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileLayoutScreen(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}
