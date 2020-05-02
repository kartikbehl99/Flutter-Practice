import 'package:flutter/material.dart';

class ColorSection extends StatelessWidget {
  final Color color;
  final Function onPressedHandler;

  ColorSection(this.color, this.onPressedHandler);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: this.color,
        child: FlatButton(
          onPressed: onPressedHandler,
          child: null,
        ),
      ),
    );
  }
}
