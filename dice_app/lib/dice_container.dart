import 'package:flutter/material.dart';

import './dice.dart';

class DiceContainer extends StatelessWidget {
  final String dice1;
  final String dice2;
  final Function onPressedHandler;

  DiceContainer({this.dice1, this.dice2, this.onPressedHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Dice(
            dice: this.dice1,
            onPressedHandler: this.onPressedHandler,
          ),
          Dice(
            dice: this.dice2,
            onPressedHandler: this.onPressedHandler,
          ),
        ],
      ),
    );
  }
}
