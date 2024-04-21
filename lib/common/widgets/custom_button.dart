import 'package:chatzon/constants/colors.dart';
import 'package:chatzon/constants/consts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  get blackColor => null;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: backColor,
        backgroundColor: tabColor,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontFamily: semibold,
        ),
      ),
    );
  }
}
