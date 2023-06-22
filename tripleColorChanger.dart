/**
 * App has 3 containers and each one changes its color when a button is pressed.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: const MyApp(),
    appBar: AppBar(
        title: const Center(
            child: Text(
      'Color Changer',
      style: TextStyle(fontSize: 36),
    ))),
  )));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

int currentIndex = 0;
List<Color> colorsList = [
  Colors.amberAccent,
  Colors.blueAccent,
  Colors.deepOrangeAccent,
  Colors.deepPurpleAccent,
  Colors.greenAccent
];

int currentIndex2 = 0;
List<Color> colorsList2 = [
  Colors.blueGrey,
  Colors.lightBlueAccent,
  Colors.redAccent,
  Colors.green,
  Colors.greenAccent,
  Colors.limeAccent
];

int currentIndex3 = 0;
List<Color> colorsList3 = [
  Colors.amberAccent,
  Colors.blueAccent,
  Colors.deepOrangeAccent,
  Colors.deepPurpleAccent,
  Colors.greenAccent
];

class _MyApp extends State<MyApp> {
  colorChnager() {
    //Changer script...

    setState(() {
      currentIndex++;
      if (currentIndex == colorsList.length) {
        currentIndex = 0;
      }
    });
  }

  colorChnager2() {
    setState(() {
      currentIndex2++;
      if (currentIndex2 == colorsList2.length) {
        currentIndex2 = 0;
      }
    });
  }

  colorChnager3() {
    setState(() {
      currentIndex3++;
      if (currentIndex3 == colorsList3.length) {
        currentIndex3 = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: colorsList[currentIndex],
          child: Center(
            child: TextButton(
              onPressed: colorChnager,
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: const Text(
                'Tap',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          color: colorsList2[currentIndex2],
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: colorChnager2,
              child: const Text(
                'Tap',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          color: colorsList3[currentIndex3],
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: colorChnager3,
              child: const Text(
                'Tap',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
