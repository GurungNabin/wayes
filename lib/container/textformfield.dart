import 'package:flutter/material.dart';

class MyTextFormFiled extends StatelessWidget {
  const MyTextFormFiled(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller});

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.grey[200],
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        hintText: hintText,
      ),
    );
  }
}
