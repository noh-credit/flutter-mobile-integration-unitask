import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final IconData? icon;

  const LabelTextField({
    super.key,
    required this.label,
    this.hintText,
    this.icon
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      mainAxisSize: .min,
      crossAxisAlignment: .stretch,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: .bold,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: icon != null ? Icon(icon) : null,
          ),
        ),

      ],
    );
  }
}