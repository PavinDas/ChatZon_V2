import 'package:chatzon/common/widgets/error.dart';
import 'package:chatzon/constants/consts.dart';
import 'package:chatzon/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: ErrorScreen(
            error: pageDoesntExist,
          ),
        ),
      );
  }
}
