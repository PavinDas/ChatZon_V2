import 'package:chatzon/common/widgets/custom_button.dart';
import 'package:chatzon/constants/consts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routName = "/login-screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          enterPhone,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          18.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              verifyPhone,
              style: TextStyle(
                fontSize: 16,
                fontFamily: regular,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                selectCountry,
                style: TextStyle(
                  color: tabColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text('+91'),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: '$phone number'.toLowerCase(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.6,
            ),
            SizedBox(
              width: 90,
              child: CustomButton(
                text: next.toLowerCase(),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
