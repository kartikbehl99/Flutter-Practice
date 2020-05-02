import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final String pictureName;

  Picture({this.pictureName});

  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(
          "./assets/" + pictureName,
        ),
      ),
    );
  }
}
