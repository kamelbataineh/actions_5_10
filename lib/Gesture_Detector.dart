import 'package:flutter/material.dart';
import 'introduction.dart';
class GestureDetectorCustom extends StatefulWidget {
  const GestureDetectorCustom({super.key});

  @override
  State<GestureDetectorCustom> createState() => _GestureDetectorCustomState();
}

class _GestureDetectorCustomState extends State<GestureDetectorCustom> {
  bool isTrue = false;
var  i;
  @override
  Widget build(BuildContext context) {
    int w = MediaQuery.of(context).size.width.toInt();
    int h = MediaQuery.of(context).size.height.toInt();
    bool isMobile = w <= 500 && h > 200 && h <= 800;
    bool isTablet = (w > 500 && w <= 800) || (h > 800 && h <= 1200);
    bool isWeb = w > 800 || h > 1200;
    i =w;

    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Detector"),

      ),
    body:Column(
    children: [


    isMobile
    ? Mobile()
        : isTablet
    ? Tablet()
        : isWeb
    ? Web()
        : Container()
    ]));
  }
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////



  Widget Web() {
    return Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                isTrue = !isTrue;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isTrue ? Icons.mail_outline : Icons.mail,
                  color: isTrue ? Colors.red : Colors.green,
                  size: 50,
                ),
                SizedBox(width: 100),
                Text("<----${i}---->"),
                SizedBox(width: 100),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isTrue = !isTrue;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isTrue ? Colors.red : Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(isTrue ? "ON" : "OFF"),
                ),
              ],
            )));
  }
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////

  Widget Tablet() {
    return Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                isTrue = !isTrue;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isTrue ? Icons.mail_outline : Icons.mail,
                  color: isTrue ? Colors.red : Colors.green,
                  size: 50,
                ),
                SizedBox(width: 70),
                Text("<----${i}---->"),
                SizedBox(width: 70),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isTrue = !isTrue;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isTrue ? Colors.red : Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(isTrue ? "ON" : "OFF"),
                ),
              ],
            )));
  }
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////

  Widget Mobile() {
    return Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                isTrue = !isTrue;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isTrue ? Icons.mail_outline : Icons.mail,
                  color: isTrue ? Colors.red : Colors.green,
                  size: 50,
                ),
                SizedBox(height: 20),
                Text("<--${i}-->"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isTrue = !isTrue;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isTrue ? Colors.red : Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(isTrue ? "ON" : "OFF"),
                ),
              ],
            )));
  }
}
