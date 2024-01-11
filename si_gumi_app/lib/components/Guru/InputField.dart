import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller;
  final double height;
  final double width;
  final bool obscureText;
  final Icon icon;
  final Color color;
  final double rounded;
  final TextInputType inputType;
  final String hintText;
  final BorderRadius borderRadius;
  final Color colorTextField;
  final Color colorHintTextStyle;
  final Color borderSide;
  final Color focusedBorder;
  const InputField({
    super.key,
    required this.obscureText,
    required this.color,
    required this.width,
    required this.height,
    required this.icon,
    required this.rounded,
    required this.hintText,
    required this.inputType,
    required this.controller,
    required this.borderRadius,
    required this.colorTextField,
    required this.colorHintTextStyle,
    required this.borderSide,
    required this.focusedBorder
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(80),
      child: Material(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          height: 80,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50.0)
          ),
          child: TextField(
            keyboardType: inputType,
            controller: controller,
            obscureText: obscureText,
            style: TextStyle(color: colorTextField),
            decoration: InputDecoration(
              hintText: hintText,
              alignLabelWithHint: true,
              hintStyle: TextStyle(
                color: colorHintTextStyle,
                fontWeight: FontWeight.normal,
                fontSize: 15.0
              ),
              prefixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: borderSide)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: focusedBorder),borderRadius: BorderRadius.circular(50))
            ),
          ),
        ),
      ),
    );
  }
}