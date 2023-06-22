import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scaffold(body: MyContainer())));
}

List<Color> colorsList = [
  Colors.amberAccent,
  Colors.cyanAccent,
  Colors.deepPurple,
  Colors.greenAccent,
  Colors.pinkAccent,
  Colors.purpleAccent
];

int currentIndex = 0;

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() {
    return _MyContainer();
  }
}

class _MyContainer extends State<MyContainer> {
  void colorChanger() {
    setState(() {
      currentIndex++;
      if (currentIndex == colorsList.length) {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(context) {
    return Container(
      color: colorsList[currentIndex],
      child: Center(
        child: TextButton(
          child: const Text(
            'Press Here',
            style: TextStyle(fontSize: 36, color: Colors.black),
          ),
          onPressed: colorChanger,
          style: TextButton.styleFrom(backgroundColor: Colors.amberAccent),
        ),
      ),
    );
  }
}
