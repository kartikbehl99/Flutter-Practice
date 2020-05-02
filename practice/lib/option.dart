import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String option;
  final Function onPressedHandler;

  Option(this.option, this.onPressedHandler);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Text(this.option),
        textColor: Colors.white,
        onPressed: this.onPressedHandler);
  }
}
