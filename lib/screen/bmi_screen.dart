import 'package:flutter/material.dart';
import 'package:tugas_9/widgets/bmi_footer.dart';
import 'package:tugas_9/widgets/bmi_input_field.dart';
import 'package:tugas_9/widgets/bmi_result.dart';

class BMIScreen extends StatelessWidget {
  const BMIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        backgroundColor: Colors.cyan,
      ),
      body: const BMICalculator(),
    ));
  }
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _bmi = 0.0;

  final String _bmiinfo =
      'When interpreting the BMI results, there can be slight variations based on sex. Some health organizations acknowledge that men and women tend to carry fat differently, and this can influence the health risks associated with certain BMI ranges.';

  final String _bmirange =
      'Below 18.5: Underweight\n18.5 - 24.9: Normal weight\n25.0 - 29.9: Overweight\n30.0 and above: Obese';

  void _calculateBMI() {
    double height =
        double.parse(_heightController.text) / 100; // Conversion cm to meters
    double weight = double.parse(_weightController.text);
    _bmi = weight / (height * height);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(_bmiinfo,
                    style: const TextStyle(
                      fontSize: 16.0,
                    )),
              ),
              BMIInputField(
                  label: 'Height (cm)', controller: _heightController),
              BMIInputField(
                  label: 'Weight (kg)', controller: _weightController),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                    onPressed: _calculateBMI,
                    child: const Text('Calculate BMI')),
              ),
              BMIResult(bmi: _bmi),
              Row(
                children: [
                  Text(
                    _bmirange,
                    style: TextStyle(fontSize: 14.0),
                  )
                ],
              ),
            ],
          )),
          BMIFooter(githubURL: 'https://github.com/AhdaAI')
        ],
      ),
    );
  }
}
