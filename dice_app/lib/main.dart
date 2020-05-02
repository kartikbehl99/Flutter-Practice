import 'package:dice_app/dice_container.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int dice1;
  int dice2;

  MyAppState() {
    dice1 = Random().nextInt(6) + 1;
    dice2 = Random().nextInt(6) + 1;
  }

  void onPressedHandler() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: DiceContainer(
            dice1: "dice" + dice1.toString() + ".png",
            dice2: "dice" + dice2.toString() + ".png",
            onPressedHandler: this.onPressedHandler,
          ),
        ),
      ),
    );
  }
}
