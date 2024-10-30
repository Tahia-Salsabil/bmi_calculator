import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final double bmi;

  Result({required this.bmi});
  @override
  Widget build(BuildContext context) {

    print(bmi);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Text("BMI = ${bmi.toStringAsFixed(2)}",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


