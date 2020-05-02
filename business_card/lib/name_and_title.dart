import 'package:flutter/material.dart';

class NameAndTitle extends StatelessWidget {
  final String name;
  final String title;

  NameAndTitle({this.name, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(children: [
        Text(
          name,
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        
        Text(
          title,
          style: TextStyle(
            letterSpacing: 15,
            fontSize: 25,
            // fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
