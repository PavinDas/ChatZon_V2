import 'package:chatzon/common/widgets/custom_button.dart';
import 'package:chatzon/constants/consts.dart';
import 'package:chatzon/constants/images.dart';
import 'package:chatzon/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      LoginScreen.routName,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              welcomToApp,
              style: TextStyle(
                fontSize: 33,
                fontFamily: bold,
              ),
            ),
            SizedBox(
              height: size.height / 9,
            ),
            Image.asset(
              icon,
              height: 430,
              width: 450,
            ),
            SizedBox(
              height: size.height / 9,
            ),
            const Padding(
              padding: EdgeInsets.all(
                15.0,
              ),
              child: Text(
                privacyAndPolicy,
                style: TextStyle(
                  color: greyColor,
                  fontFamily: regular,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * 0.75,
              child: CustomButton(
                text: agreeAndContinue,
                onPressed: () => navigateToLoginScreen(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
