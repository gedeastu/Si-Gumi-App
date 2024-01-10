import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller;
  final bool obscureText;
  final Icon icon;
  final Color color;
  final double rounded;
  final TextInputType inputType;
  final String hintText;
  final BorderRadius borderRadius;
  const InputField({
    super.key,
    required this.obscureText,
    required this.color,
    required this.icon,
    required this.rounded,
    required this.hintText,
    required this.inputType,
    required this.controller,
    required this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius
      ),
      child: TextField(
        keyboardType: inputType,
        controller: controller,
        obscureText: obscureText,
      ),
    );
  }
}