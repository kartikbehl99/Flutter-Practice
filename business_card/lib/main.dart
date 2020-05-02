import 'package:flutter/material.dart';

import './picture.dart';
import './name_and_title.dart';
import './card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Picture(
                  pictureName: "geralt.jpeg",
                ),
                NameAndTitle(
                  name: "Geralt of Rivia",
                  title: "WITCHER",
                ),
                Container(
                  width: 200,
                  child: Divider(
                    color: Colors.teal.shade100,
                    thickness: 1,
                  ),
                ),
                Cards(
                  icon: Icons.home,
                  text: "Kaer Morhen",
                ),
                Cards(
                  icon: Icons.mail,
                  text: "Send a Raven",
                ),
                Cards(
                  icon: Icons.message,
                  text: "Evil is Evil!",
                ),
              ]),
        ),
      ),
    );
  }
}
