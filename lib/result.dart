import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final double bmi;

  Result({required this.bmi});
  @override
  Widget build(BuildContext context) {
    var bmi;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Text(
          'Your BMI is: ${bmi.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

