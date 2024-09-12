import 'package:flutter/material.dart';
import 'package:quiz/design1/design1.dart';
import 'package:quiz/design2/design2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Design2.routeName:(_)=>Design2(),
        Design1.routeName:(_)=>Design1(),
      },
      initialRoute: Design2.routeName,
    );
  }
}
