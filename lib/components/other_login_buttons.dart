// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class OtherLoginButton extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;

  const OtherLoginButton(
      {super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Image.asset(
          imagePath,
          height: 35,
        ),
      ),
    );
  }
}
