import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final IconData icon;
  final String text;

  Cards({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal.shade500,
        ),
        title: Text(
          text,
          style: TextStyle(
              color: Colors.teal.shade900,
              fontFamily: "Source Sans Pro",
              letterSpacing: 2),
        ),
      ),
    );
  }
}
