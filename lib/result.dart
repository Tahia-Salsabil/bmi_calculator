import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Result extends StatelessWidget {
  final double bmi;

  Result({required this.bmi});
  @override
  Widget build(BuildContext context) {

    print(bmi);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('BMI Result',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.purple),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.50),
          child: SizedBox(
            child: Text("BMI = ${bmi.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.indigo ),
            ),
          ),
        ),
      ),
    );
  }
}


