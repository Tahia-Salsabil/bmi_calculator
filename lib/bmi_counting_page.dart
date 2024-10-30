import 'package:bmi_counting_app/result.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCountingPage extends StatefulWidget {
  const BmiCountingPage({super.key});

  @override
  State<BmiCountingPage> createState() => _BmiCountingPageState();
}

class _BmiCountingPageState extends State<BmiCountingPage> {
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  void _calculateBMI() {
    final double weight = double.parse(_weightController.text.toString());
    final double height = double.parse(_heightController.text.toString());

    if (weight > 0 && height > 0) {
      final double bmi = weight / (height * height);


      print(bmi);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Result(bmi: bmi),
        ),
      );
    }
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [

                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: _weightController,
                        decoration: InputDecoration(

                          //  border: UnderlineInputBorder(), for only under line input field
                          border: OutlineInputBorder(),  //round box input field
                          labelText: 'Weight',
                          hintText: 'Enter Your Weight',
                          prefixIcon: const Icon(Icons.accessibility_rounded),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: _heightController,
                        decoration: InputDecoration(

                          //  border: UnderlineInputBorder(), for only under line input field
                          border: OutlineInputBorder(),  //round box input field
                          labelText: 'Hight',
                          hintText: 'Enter Your Hight',
                          prefixIcon: const Icon(Icons.accessibility_sharp),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(30.100),
                      child: ElevatedButton(
                          onPressed: _calculateBMI,
                          child: Center(
                            child: Text("Calculate",style: TextStyle(
                                fontSize: 40,fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}