import 'package:chatzon/constants/consts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routName = "/login-screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          enterPhone,
        ),
      ),
    );
  }
}
