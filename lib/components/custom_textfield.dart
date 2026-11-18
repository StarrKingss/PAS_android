import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController txtController;
  final double cornerRadius;
  final IconData prefixIcon;
  final bool obsecureText;
  final Color? fillColor;
  const CustomTextField({super.key,
  required this.hint,
  required this.txtController,
  required this.cornerRadius,
  required this.obsecureText,
  required this.prefixIcon,
  required this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: hint,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
        fillColor: fillColor,
        filled: true,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}