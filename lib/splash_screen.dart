import 'dart:async';
import 'package:bmi_counting_app/bmi_counting_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer() async{

    Timer(Duration(seconds: 7),(){

      Navigator.push(context, MaterialPageRoute(builder:(context)=>BmiCountingPage()));

    });

  }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/bmic.png",width: 150, height: 150,),
            SizedBox(height: 25,),

            Text("BMI Calculator", style: GoogleFonts.aclonica(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),),

            SizedBox(height: 10,) ,

            CircularProgressIndicator(
              color: Colors.indigo,
            ),

          ],

        ),
      ),
    );
  }
}
