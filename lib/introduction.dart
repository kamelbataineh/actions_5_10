import 'dart:async';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'Gesture_Detector.dart';

class IntroductionScreenPage extends StatefulWidget {
  const IntroductionScreenPage({super.key});

  @override
  State<IntroductionScreenPage> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreenPage> {
  final GlobalKey<IntroductionScreenState> introKey = GlobalKey<IntroductionScreenState>();
  @override
  void initState() {
    super.initState();
     Timer(
      const Duration(seconds: 5),
    () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>GestureDetectorCustom() ),
     ));
  }

  @override
  Widget build(BuildContext context) {
     return IntroductionScreen(
       pages: [
         PageViewModel(
           title: "USDT",
           body: "",
           image: Image.network("https://i.pinimg.com/236x/a4/c9/58/a4c958da21ecf9a26f783baa915de3b1.jpg"),
           decoration: const PageDecoration(
             pageColor: Colors.blue,
             titleTextStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
             bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18),
           ),
         ),PageViewModel(
           title: "BTC",
           body: "",
           image: Image.network("https://i.pinimg.com/236x/11/84/c2/1184c24b654c81da63b3be7d3fd05800.jpg"),
           decoration: const PageDecoration(
             pageColor: Colors.blue,
             titleTextStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
             bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18),
           ),
         ),PageViewModel(
           title: "TON",
           body: "",
           image: Image.network("https://i.pinimg.com/236x/46/cc/ef/46ccef2c11c74974dfcc89149e1a2694.jpg"),
           decoration: const PageDecoration(
             pageColor: Colors.blue,
             titleTextStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
             bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18),
           ),
         ),
       ],
       onDone: () {
         Navigator.pushReplacement(
           context,
           MaterialPageRoute(builder: (context) => GestureDetectorCustom()),
         );
       },

       showSkipButton: true,
       back: Text("Back"),
       skip:  Text("Skip"),
       next:  Text("Next"),
       done: Text("Done"),
     );
       //   body:  Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         TextButton(
    //           onPressed: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(builder: (context) => GestureDetectorCustom()), // Replace with your next screen widget.
    //             );
    //           },
    //           style: TextButton.styleFrom(
    //             foregroundColor: Colors.white,
    //             backgroundColor: Colors.blue,
    //             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    //           ),
    //           child: const Text(
    //             "Welcome",
    //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         const SizedBox(height: 20),
    //         const CircularProgressIndicator(),
    //       ],
    //     ),
    //   ),
  }
}
