// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameContrller = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.duo,
                size: 200,
                color: Colors.grey[850],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Remember to Stay Positive',
                style: TextStyle(color: Colors.grey[670], fontSize: 17),
              ),
              SizedBox(
                height: 22,
              ),
              MyTextField(
                controller: usernameContrller,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Forgot Password?')
            ],
          ),
        ),
      ),
    );
  }
}
