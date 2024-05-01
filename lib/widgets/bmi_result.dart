import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  const BMIResult({super.key, required this.bmi});

  final double bmi;

  String _getBMIInterpretation() {
    if (bmi == 0.0) {
      return '';
    } else if (bmi <= 18.5) {
      return 'Underweight';
    } else if (bmi <= 25.0) {
      return 'Normal weight';
    } else if (bmi <= 30.0) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          bmi > 0
              ? 'Your BMI: ${bmi.toStringAsFixed(2)}'
              : 'Enter your height and weight.',
          style: const TextStyle(fontSize: 24.0),
        ),
        Text(
          _getBMIInterpretation(),
          style: const TextStyle(fontSize: 18.0),
        )
      ],
    );
  }
}
