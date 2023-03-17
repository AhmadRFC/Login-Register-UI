// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OtherLoginButton extends StatelessWidget {
  final String imagePath;

  const OtherLoginButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Image.asset(
        imagePath,
        height: 35,
      ),
    );
  }
}
