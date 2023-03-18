// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  TextEditingController controller = TextEditingController();
  final String hintText;
  final bool obscureText;

  MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          suffixIcon: widget.controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    widget.controller.clear();
                  },
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.white70,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
    );
  }
}
