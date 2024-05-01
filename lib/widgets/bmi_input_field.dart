import 'package:flutter/material.dart';

class BMIInputField extends StatelessWidget {
  const BMIInputField(
      {super.key, required this.label, required this.controller});

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: label),
    );
  }
}
