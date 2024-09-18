import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'girly_Calc.dart';

class Splash extends StatefulWidget {
  static const String routeName = "calc";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // تأخير لمدة 3 ثوانٍ ثم الانتقال إلى الشاشة الرئيسية
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CalcHome()), // استبدل بـ شاشتك
      );
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffef739f),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView to prevent overflow
        child: Container(
          margin: EdgeInsets.only(top: screenHeight * .2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: screenWidth * .3,
                child: Image.asset("assets/calc/calc.jpg", fit: BoxFit.fill),
              ),
              SizedBox(height: screenHeight * .05),
              DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontFamily: 'Pacifico',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Girly Calc'),
                  ],
                  isRepeatingAnimation: false,
                ),
              ),
              SizedBox(height: screenHeight * .2), // Add some space before the logo
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/calc/logo.png", width: 100, height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
