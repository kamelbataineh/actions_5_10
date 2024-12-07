import 'dart:async';

import 'package:actions_5_10/Gesture_Detector.dart';
import 'package:flutter/material.dart';

import 'introduction.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home:IntroductionScreenPage(),
    );
  }
}
