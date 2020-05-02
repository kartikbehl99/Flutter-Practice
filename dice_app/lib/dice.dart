import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  final Function onPressedHandler;
  final String dice;

  Dice({this.onPressedHandler, this.dice});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FlatButton(
        child: Image.asset(
          "./assets/images/" + this.dice,
          width: 150,
        ),
        onPressed: onPressedHandler,
        padding: EdgeInsets.all(0),
      ),
    );
  }
}
