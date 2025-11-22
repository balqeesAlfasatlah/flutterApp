import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Icon? suffixIcon;
  final bool obscureText;
  const CustomTextFiled({
    super.key,
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
