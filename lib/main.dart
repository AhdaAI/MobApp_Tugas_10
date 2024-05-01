import 'package:flutter/material.dart';
import 'package:tugas_9/screen/bmi_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BMIScreen());
  }
}
