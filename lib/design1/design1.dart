import 'package:flutter/material.dart';
import 'package:quiz/design1/details/AppAssets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Design1 extends StatefulWidget {
  static const String routeName = "design1";
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {


  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Scaffold(
      backgroundColor: Colors.white,

    );
  }
}
