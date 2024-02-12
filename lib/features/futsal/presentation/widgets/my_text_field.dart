import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(this.controller, this.hintText, this.obscureText,
      {super.key, this.maxLines = 1});

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      controller: controller,
      style: TextStyle(color: Theme.of(context).colorScheme.background),
    );
  }
}
